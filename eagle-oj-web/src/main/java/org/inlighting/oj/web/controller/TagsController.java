package org.inlighting.oj.web.controller;

import com.github.pagehelper.PageRowBounds;
import org.inlighting.oj.web.entity.ResponseEntity;
import org.inlighting.oj.web.service.TagsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Smith
 **/
@RestController
@Validated
@RequestMapping(value = "/tags", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
public class TagsController {

    private TagsService tagsService;

    @Autowired
    public void setTagsService(TagsService tagsService) {
        this.tagsService = tagsService;
    }

    @GetMapping
    public ResponseEntity getTags() {
        return new ResponseEntity(tagsService.getTags());
    }

}