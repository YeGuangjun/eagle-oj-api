package com.eagleoj.web.service;

import com.eagleoj.web.entity.ContestEntity;
import com.eagleoj.web.entity.GroupEntity;
import java.util.List;

/**
 * @author Smith
 **/
public interface GroupService {

    int saveGroup(int owner, String name, String password);

    void deleteGroup(int gid);

    GroupEntity getGroup(int gid);

    List<GroupEntity> listUserGroups(int owner);

    boolean updateGroupByGid(int gid, String name, String password);
}
