package org.inlighting.oj.web.service;

import junit.framework.TestCase;
import org.inlighting.oj.web.dao.TestCaseDao;
import org.inlighting.oj.web.entity.TestCaseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Smith
 **/
@Service
public class TestCaseService {

    private TestCaseDao testCaseDao;

    @Autowired
    public void setTestCaseDao(TestCaseDao testCaseDao) {
        this.testCaseDao = testCaseDao;
    }

    public boolean addTestCase(int pid, int owner, String stdin, String stdout, int strength, long createTime) {
        // todo
        return false;
    }

    public int getTestCaseCount(int pid) {
        return 0;
    }

    public List<TestCaseEntity> getTestCases(int pid) {
        return null;
    }

    public boolean updateTestCaseByTidAndOwner(int tid, int owner, String stdin, String stdout, int strength, long createTime) {
        // todo
        return false;
    }

    public boolean deleteTestCaseByTidAndOwner(int tid, int owner) {

        // todo
        return false;
    }
}