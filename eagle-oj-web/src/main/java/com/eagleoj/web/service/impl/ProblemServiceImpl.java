package com.eagleoj.web.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.eagleoj.judge.JudgeHelper;
import com.eagleoj.web.dao.ProblemMapper;
import com.eagleoj.web.entity.ProblemEntity;
import com.eagleoj.web.service.ProblemService;
import com.eagleoj.web.util.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author Smith
 **/
@Service
public class ProblemServiceImpl implements ProblemService {

    @Autowired
    private ProblemMapper problemMapper;

    @Override
    public int save(int owner, String title, JSONObject description, JSONObject inputFormat, JSONObject outputFormat,
                          int difficult, JSONArray samples, int time, int memory) {
        // 添加题目
        ProblemEntity problemEntity = new ProblemEntity();
        problemEntity.setOwner(owner);
        problemEntity.setTitle(title);
        problemEntity.setLang(JudgeHelper.getAllLanguages());
        problemEntity.setDescription(description);
        problemEntity.setInputFormat(inputFormat);
        problemEntity.setOutputFormat(outputFormat);
        problemEntity.setDifficult(difficult);
        problemEntity.setSamples(samples);
        problemEntity.setTime(time);
        problemEntity.setMemory(memory);
        problemEntity.setStatus(0);
        problemEntity.setCreateTime(System.currentTimeMillis());
        boolean flag = problemMapper.save(problemEntity) == 1;
        return flag? problemEntity.getPid(): 0;
    }

    @Override
    public List<ProblemEntity> listUserProblems(int uid) {
        return problemMapper.listByUid(uid);
    }

    @Override
    public List<ProblemEntity> listAuditingProblems() {
        return problemMapper.listAuditing();
    }

    @Override
    public boolean refuseProblem(int pid) {
        return problemMapper.refuseByPid(pid) == 1;
    }

    @Override
    public boolean acceptProblem(int pid) {
        return problemMapper.acceptByPid(pid) == 1;
    }

    @Override
    public ProblemEntity getProblem(int pid) {
        ProblemEntity problemEntity = problemMapper.getByPid(pid);
        WebUtil.assertNotNull(problemEntity, "不存在此题目");
        return problemEntity;
    }

    @Override
    public List<Map<String, Object>> listProblemTags(int pid) {
        return problemMapper.listProblemTagsByPid(pid);
    }

    @Override
    public List<Map<String, Object>> listSharedProblems(String tag, Integer difficult, Integer uid) {
        return problemMapper.listShared(uid, difficult, tag);
    }

    @Override
    public boolean updateProblemDescriptionByPid(int pid, String title, JSONObject description, JSONObject inputFormat,
                                            JSONObject outputFormat, JSONArray samples, int difficult) {
        //通过pid来更新题目
        ProblemEntity problemEntity = new ProblemEntity();
        problemEntity.setTitle(title);
        problemEntity.setDescription(description);
        problemEntity.setInputFormat(inputFormat);
        problemEntity.setOutputFormat(outputFormat);
        problemEntity.setSamples(samples);
        problemEntity.setDifficult(difficult);
        return problemMapper.updateDescriptionByPid(pid, problemEntity) == 1;
    }

    @Override
    public boolean updateProblemSettingByPid(int pid, JSONArray lang, int time, int memory, int status) {
        // todo wait to refactor
        ProblemEntity problemEntity = new ProblemEntity();
        problemEntity.setLang(lang);
        problemEntity.setTime(time);
        problemEntity.setMemory(memory);
        problemEntity.setStatus(status);
        return problemMapper.updateSettingByPid(pid, problemEntity) == 1;
    }

    @Override
    public boolean updateProblemTimesByPid(int pid, ProblemEntity problemEntity) {
        return problemMapper.updateTimesByPid(pid, problemEntity) == 1;
    }
}
