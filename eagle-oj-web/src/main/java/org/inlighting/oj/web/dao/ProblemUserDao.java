package org.inlighting.oj.web.dao;

import org.apache.ibatis.session.SqlSession;
import org.inlighting.oj.web.entity.ProblemUserEntity;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Smith
 **/
@Repository
public class ProblemUserDao {
    public boolean add(SqlSession sqlSession, ProblemUserEntity entity) {
        return sqlSession.insert("problemUser.insert", entity) == 1;
    }

    public boolean update(SqlSession sqlSession, ProblemUserEntity entity) {
        return sqlSession.update("problemUser.update", entity) == 1;
    }

    public ProblemUserEntity get(SqlSession sqlSession, ProblemUserEntity entity) {
        return sqlSession.selectOne("problemUser.select", entity);
    }

}
