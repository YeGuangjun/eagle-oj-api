package org.inlighting.oj.web.controller.user;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageRowBounds;
import io.swagger.annotations.ApiOperation;
import org.inlighting.oj.web.DefaultConfig;
import org.inlighting.oj.web.controller.exception.WebErrorException;
import org.inlighting.oj.web.controller.format.user.AddContestProblemFormat;
import org.inlighting.oj.web.controller.format.user.CreateContestFormat;
import org.inlighting.oj.web.controller.format.user.EnterContestFormat;
import org.inlighting.oj.web.controller.format.user.UpdateContestProblemFormat;
import org.inlighting.oj.web.entity.*;
import org.inlighting.oj.web.security.SessionHelper;
import org.inlighting.oj.web.service.ContestService;
import org.inlighting.oj.web.service.ContestUserInfoService;
import org.inlighting.oj.web.service.ProblemContestInfoService;
import org.inlighting.oj.web.service.ProblemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Smith
 **/
@RestController
@Validated
@RequestMapping(value = "/user/contest", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
public class UserContestController {

    private ProblemService problemService;

    private ContestService contestService;

    private ContestUserInfoService contestUserInfoService;

    private ProblemContestInfoService problemContestInfoService;

    @Autowired
    public void setProblemContestInfoService(ProblemContestInfoService problemContestInfoService) {
        this.problemContestInfoService = problemContestInfoService;
    }

    @Autowired
    public void setProblemService(ProblemService problemService) {
        this.problemService = problemService;
    }

    @Autowired
    public void setContestService(ContestService contestService) {
        this.contestService = contestService;
    }

    @Autowired
    public void setContestUserInfoService(ContestUserInfoService contestUserInfoService) {
        this.contestUserInfoService = contestUserInfoService;
    }

    @ApiOperation("获取比赛信息")
    @GetMapping("/{cid}")
    public ResponseEntity getContestDescription(@PathVariable("cid") int cid) {
        ContestEntity contestEntity = contestService.getContestByCid(cid);
        haveContest(contestEntity);
        havePermission(contestEntity);
        return new ResponseEntity(contestEntity);
    }

    @ApiOperation("获取用户管理的比赛")
    @GetMapping
    public ResponseEntity getContests(@RequestParam("page") int page,
                                      @RequestParam("page_size") int pageSize) {
        int owner = SessionHelper.get().getUid();
        PageRowBounds pager = new PageRowBounds(page, pageSize);
        return new ResponseEntity(contestService.getUserContests(owner, pager));
    }

    @ApiOperation("创建比赛")
    @PostMapping
    public ResponseEntity createContest(@RequestBody @Valid CreateContestFormat format) {
        int owner = SessionHelper.get().getUid();
        checkContest(format);
        int cid = contestService.addContest(format.getName(), owner,format.getSlogan(),
                format.getDescription(), format.getStartTime(), format.getEndTime(),
                format.getTotalTime(), format.getPassword(), format.getType(), System.currentTimeMillis());
        if (cid == 0) {
            throw new WebErrorException("比赛创建失败");
        }
        return new ResponseEntity("比赛创建成功", cid);
    }

    @ApiOperation("编辑比赛")
    @PutMapping("/{cid}")
    public ResponseEntity editContest(@PathVariable("cid") int cid,
                                      @RequestBody @Valid CreateContestFormat format) {
        checkContest(format);

        ContestEntity contestEntity = contestService.getContestByCid(cid);
        haveContest(contestEntity);
        havePermission(contestEntity);

        if (! contestService.updateContestDescription(cid, format.getName(), format.getSlogan(), format.getDescription(),
                format.getStartTime(), format.getEndTime(), format.getTotalTime(), format.getPassword(), format.getType())) {
            throw new WebErrorException("比赛更新失败");
        }
        return new ResponseEntity("比赛更新成功");
    }

    @ApiOperation("参加比赛")
    @PostMapping("/{cid}/enter")
    public ResponseEntity enterContest(@PathVariable("cid") int cid,
                                       @RequestBody @Valid EnterContestFormat format) {
        // 判断是否已经加入比赛
        int uid = SessionHelper.get().getUid();
        ContestUserInfoEntity contestUserInfoEntity = contestUserInfoService.getByCidAndUid(cid, uid);
        if (contestUserInfoEntity != null) {
            return new ResponseEntity("你已经加入比赛了");
        }

        // 校验密码
        ContestEntity contestEntity = contestService.getContestByCid(cid);
        if (contestEntity.getPassword() != null) {
            String password = contestEntity.getPassword();
            if (! password.equals(format.getPassword())) {
                throw new WebErrorException("密码错误");
            }
        }

        // 加入比赛
        if (! contestUserInfoService.add(cid, uid, System.currentTimeMillis())) {
            throw new WebErrorException("加入比赛失败");
        }
        return new ResponseEntity("加入比赛成功");
    }

    @ApiOperation("向比赛添加题目")
    @PostMapping("/{cid}/problem")
    public ResponseEntity addContestProblem(@PathVariable("cid") int cid,
                                            @RequestBody @Valid AddContestProblemFormat format) {
        // 校验数据
        int pid = format.getPid();
        int score = format.getScore();
        if (pid < 1 || score < 1) {
            throw new WebErrorException("数据格式错误");
        }

        // 校验比赛和权限
        ContestEntity contestEntity = contestService.getContestByCid(cid);
        haveContest(contestEntity);
        havePermission(contestEntity);

        ProblemContestInfoEntity problemContestInfoEntity = problemContestInfoService.getProblemContest(pid, cid);
        if (problemContestInfoEntity != null) {
            throw new WebErrorException("题目已经被添加");
        }

        ProblemEntity problemEntity = problemService.getProblemByPid(pid);
        if (problemEntity == null) {
            throw new WebErrorException("此题不存在");
        }
        if (problemEntity.getStatus() != 2) {
            throw new WebErrorException("此题不能被添加");
        }

        if (! problemContestInfoService.addProblemInfo(pid, cid, score)) {
            throw new WebErrorException("题目添加失败");
        }

        return new ResponseEntity("题目添加成功");
    }

    @ApiOperation("获取比赛的题目列表")
    @GetMapping("/{cid}/problem")
    public ResponseEntity getContestProblems(@PathVariable("cid") int cid) {
        return new ResponseEntity(problemContestInfoService.getContestProblems(cid));
    }

    @ApiOperation("更新比赛题目的分值")
    @PutMapping("/{cid}/problem/{pid}")
    public ResponseEntity updateContestProblem(@PathVariable("cid") int cid,
                                               @PathVariable("pid") int pid,
                                               @RequestBody @Valid UpdateContestProblemFormat format) {
        ContestEntity contestEntity = contestService.getContestByCid(cid);
        haveContest(contestEntity);
        havePermission(contestEntity);
        if (! problemContestInfoService.updateContestProblem(cid, pid, format.getScore())) {
            throw new WebErrorException("更新失败");
        }
        return new ResponseEntity("更新成功");
    }

    @ApiOperation("删除比赛的题目")
    @DeleteMapping("/{cid}/problem/{pid}")
    public ResponseEntity deleteContestProblem(@PathVariable("cid") int cid,
                                               @PathVariable("pid") int pid) {
        ContestEntity contestEntity = contestService.getContestByCid(cid);
        haveContest(contestEntity);
        havePermission(contestEntity);
        if (! problemContestInfoService.deleteContestProblem(cid, pid)) {
            throw new WebErrorException("删除失败");
        }
        return new ResponseEntity("删除成功");
    }

    private void checkContest(CreateContestFormat format) {
        long currentTime = System.currentTimeMillis();
        // valid time
        if (format.getStartTime() <= currentTime) {
            throw new WebErrorException("开始时间不得早于现在的时间");
        }

        // endTime为0代表永远不结束
        if (format.getEndTime()!=0 && format.getStartTime() >= format.getEndTime()) {
            throw new WebErrorException("非法结束时间");
        }

        // 限时模式
        if (format.getType()==1 || format.getType()==3) {
            if (format.getTotalTime() == null) {
                throw new WebErrorException("非法总时间");
            }
        }
    }

    private void haveContest(ContestEntity contestEntity) {
        if (contestEntity == null) {
            throw new WebErrorException("比赛不存在");
        }
    }

    private void havePermission(ContestEntity contestEntity) {
        int uid = SessionHelper.get().getUid();
        int role = SessionHelper.get().getRole();
        if (! (uid == contestEntity.getOwner() || role == DefaultConfig.ADMIN_ROLE)) {
            throw new WebErrorException("只允许本人操作");
        }
    }
}
