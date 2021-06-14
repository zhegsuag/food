package com.softeem.service.serviceImpl;

import com.softeem.mapper.NoticeMapper;
import com.softeem.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Service
public class NoticeServiceImpl implements NoticeService {
    @Autowired(required = false)
    private NoticeMapper noticeMapper;

}
