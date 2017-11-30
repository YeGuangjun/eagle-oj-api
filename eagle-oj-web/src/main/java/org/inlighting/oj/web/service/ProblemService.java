package org.inlighting.oj.web.service;

import com.alibaba.fastjson.JSONArray;
import org.apache.ibatis.session.SqlSession;
import org.inlighting.oj.web.dao.ProblemDao;
import org.inlighting.oj.web.dao.ProblemContestInfoDao;
import org.inlighting.oj.web.entity.ProblemEntity;
import org.inlighting.oj.web.entity.ProblemContestInfoEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author ygj
 **/
@Service
public class ProblemService {

    private final SqlSession sqlSession;

    private ProblemDao problemDao;

    private ProblemContestInfoDao problemInfoDao;

    public ProblemService(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Autowired
    public void setProblemDao(ProblemDao problemDao) {
        this.problemDao = problemDao;
    }

    @Autowired
    public void setProblemInfoDao(ProblemContestInfoDao problemInfoDao) {
        this.problemInfoDao = problemInfoDao;
    }


    public int addProblem(int owner, String title, String description, String inputFormat, String outputFormat,
                          int difficult, JSONArray samples, JSONArray tags, long createTime) {
        // 添加题目
        ProblemEntity problemEntity = new ProblemEntity();
        problemEntity.setOwner(owner);
        problemEntity.setTitle(title);
        problemEntity.setCodeLanguage(new JSONArray());
        problemEntity.setDescription(description);
        problemEntity.setInputFormat(inputFormat);
        problemEntity.setOutputFormat(outputFormat);
        problemEntity.setDifficult(difficult);
        problemEntity.setSamples(samples);
        problemEntity.setModerators(new JSONArray());
        problemEntity.setTags(tags);
        problemEntity.setStatus(0);
        problemEntity.setCreateTime(createTime);

        return problemDao.addProblem(sqlSession, problemEntity)? problemEntity.getPid() : 0;
    }

    /**
     * 添加problem和contest之间的关系
     * 开启事务
     */
    @Transactional
    public boolean addContestProblem(List<Integer> problemList, int belong) {
        // todo
        return false;
    }

    public ProblemEntity getProblemByPid(int pid) {
        // 通过ID获得题目
        return problemDao.getProblemByPid(sqlSession, pid);
    }

    public boolean updateProblemDescription(int pid, String title, String description, String inputFormat,
                                            String outputFormat, JSONArray samples, int difficult, JSONArray tags) {
        //通过pid来更新题目
        ProblemEntity problemEntity = new ProblemEntity();
        problemEntity.setPid(pid);
        problemEntity.setTitle(title);
        problemEntity.setDescription(description);
        problemEntity.setInputFormat(inputFormat);
        problemEntity.setOutputFormat(outputFormat);
        problemEntity.setSamples(samples);
        problemEntity.setDifficult(difficult);
        problemEntity.setTags(tags);
        return problemDao.updateProblemDescription(sqlSession, problemEntity);
    }

    public boolean addProblemSubmitTimes(int pid) {
        return problemDao.addProblemSubmitTimes(sqlSession, pid);
    }

    public boolean addProblemAcceptTimes(int pid) {
        return problemDao.addProblemAcceptTimes(sqlSession, pid);
    }
}
