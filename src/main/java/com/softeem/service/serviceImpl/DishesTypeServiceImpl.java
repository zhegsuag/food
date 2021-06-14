package com.softeem.service.serviceImpl;

import com.softeem.domain.DishesType;
import com.softeem.mapper.DishesTypeMapper;
import com.softeem.service.DishesTypeService;
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
public class DishesTypeServiceImpl implements DishesTypeService {

    @Autowired(required = false)
    private DishesTypeMapper dishesTypeMapper ;
    @Override
    public ModelAndView findAll()  {
        ModelAndView mv = new ModelAndView();
        try{
            List<DishesType> types = dishesTypeMapper.findAll();
            //传值
            mv.addObject("typeList" , types);
            mv.setViewName("/dishestype-list");
        }catch (Exception e){

        }
        return mv;
    }

    @Override
    public ModelAndView save(String typeName){
        ModelAndView mv = new ModelAndView();
        try{
            dishesTypeMapper.save(typeName);
            mv.setViewName("redirect:/type/findAll");
        }catch (Exception e){

        }
        return mv;
    }

    @Override
    public ModelAndView updateType(Integer id, String typeName) {
        ModelAndView mv = new ModelAndView();
        try {
            System.out.println(id+" "+typeName);
            dishesTypeMapper.updateType(id,typeName);
            mv.setViewName("redirect:findAll");
        }catch (Exception e){

        }
        return mv;
    }


    @Override
    public ModelAndView delType(String ids) throws Exception {
        ModelAndView mv = new ModelAndView();
        try{
            String[] id = ids.split(",");
            for(int i = 0 ; i < id.length ; i++){
                dishesTypeMapper.delType(Integer.parseInt(id[i]));
            }
            mv.setViewName("redirect:findAll");
        }catch (Exception e){

        }
        return mv;
    }
}
