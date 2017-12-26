package org.inlighting.oj.web.dao;

import com.github.pagehelper.PageRowBounds;
import org.apache.ibatis.session.SqlSession;
import org.inlighting.oj.web.entity.SubmissionEntity;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

/**
 * @author Smith
 **/
@Repository
public class SubmissionDao {
    public boolean insert(SqlSession sqlSession, SubmissionEntity entity) {
        return sqlSession.insert("submission.insertSubmission", entity) == 1;
    }

    public List<HashMap<String, Object>> getSubmissions(SqlSession sqlSession, SubmissionEntity entity, PageRowBounds pager) {
        return sqlSession.selectList("submission.getSubmissions", entity, pager);
    }
}