package com.softeem.service.serviceImpl;

import com.softeem.domain.Material;
import com.softeem.mapper.MaterialMapper;
import com.softeem.service.MaterialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Service
public class MaterialServiceImpl implements MaterialService {

    @Autowired(required = false)
    private MaterialMapper materialMapper;

    @Override
    public ModelAndView findMaterial() {
        ModelAndView mv = new ModelAndView();
        try {
            List<Material> list = materialMapper.findMaterial();
            mv.addObject("materialList" , list);
            mv.setViewName("/material-list");
        }catch (Exception e){
            e.printStackTrace();
        }
        return mv;

    }
}
