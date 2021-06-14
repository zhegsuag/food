package com.softeem.controller.web;

import com.softeem.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Component
@RequestMapping("/notice")
public class NoticeController {
    @Autowired
    private NoticeService noticeService;

}
