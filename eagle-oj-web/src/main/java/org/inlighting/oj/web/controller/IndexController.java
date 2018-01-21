package org.inlighting.oj.web.controller;

import com.alibaba.fastjson.JSONArray;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.ehcache.Cache;
import org.inlighting.oj.judge.LanguageEnum;
import org.inlighting.oj.web.cache.CacheController;
import org.inlighting.oj.web.controller.exception.WebErrorException;
import org.inlighting.oj.web.entity.AttachmentEntity;
import org.inlighting.oj.web.entity.ResponseEntity;
import org.inlighting.oj.web.entity.UserEntity;
import org.inlighting.oj.web.controller.format.index.IndexLoginFormat;
import org.inlighting.oj.web.controller.format.index.IndexRegisterFormat;
import org.inlighting.oj.web.service.AttachmentService;
import org.inlighting.oj.web.service.UserService;
import org.inlighting.oj.web.util.JWTUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.*;

/**
 * @author Smith
 **/
@RestController
@Validated
@RequestMapping(value = "/", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
public class IndexController {

    @Autowired
    private UserService userService;

    @Autowired
    private AttachmentService attachmentService;

    @Value("${eagle-oj.oss.url}")
    private String OSS_URL;

    @Value("${eagle-oj.default.avatar}")
    private String DEFAULT_AVATAR;

    @ApiOperation("用户注册")
    @PostMapping(value = "/register")
    public ResponseEntity register(@RequestBody @Valid IndexRegisterFormat format) {
        // 检查用户是否存在
        UserEntity userEntity = userService.getUserByEmail(format.getEmail());
        if (userEntity != null) {
            throw new WebErrorException("邮箱已经注册");
        }

        // 注册用户
        int uid = userService.addUser(format.getEmail(),
                format.getNickname(),
                new Md5Hash(format.getPassword()).toString(),
                System.currentTimeMillis());
        if (uid == 0) {
            throw new WebErrorException("注册失败");
        }
        return new ResponseEntity("注册成功", uid);
    }

    @ApiOperation("用户登入")
    @PostMapping("/login")
    public ResponseEntity login(@RequestBody @Valid IndexLoginFormat format) {
        UserEntity userEntity = userService.getUserByLogin(format.getEmail(),
                new Md5Hash(format.getPassword()).toString());
        if (userEntity == null)
            throw new WebErrorException("用户名密码错误");

        JSONArray array = userEntity.getPermission();
        Iterator<Object> it = array.iterator();
        Set<String> permission = new HashSet<>();
        while (it.hasNext()) {
            permission.add(it.next().toString());
        }
        String token = JWTUtil.sign(userEntity.getUid(), userEntity.getRole(), permission, userEntity.getPassword());
        Cache<String, String> authCache = CacheController.getAuthCache();
        authCache.put(token, userEntity.getPassword());

        return new ResponseEntity("登入成功", token);
    }

    @GetMapping("/avatar")
    public void getAvatar(@RequestParam("aid") int aid,
                          HttpServletResponse response) throws IOException {
        AttachmentEntity entity = attachmentService.get(aid);
        String url;
        if (entity == null) {
            url = OSS_URL+DEFAULT_AVATAR;
        } else {
            url = OSS_URL+entity.getUrl();
        }
        response.sendRedirect(url);
    }

    @RequestMapping("/401")
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    public ResponseEntity unauthorized() {
        return new ResponseEntity(401, "请求未授权", null);
    }

    @RequestMapping("/404")
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ResponseEntity notFound() {
        return new ResponseEntity(404, "此页面不存在", null);
    }
}
