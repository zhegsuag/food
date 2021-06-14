package com.softeem.service.serviceImpl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.softeem.domain.Dishes;
import com.softeem.domain.DishesType;
import com.softeem.mapper.DishesMapper;
import com.softeem.mapper.DishesTypeMapper;
import com.softeem.service.DishesService;
import com.softeem.tool.FileTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
/**
 * 管理员
 *  * @author Administrator
 *  *
 */
@Service
public class DishesServiceImpl implements DishesService {
    @Autowired(required = false)
    private DishesMapper dishesMapper;

    @Autowired(required = false)
    private DishesTypeMapper typeMapper ;

    @Override
    public ModelAndView findDishes(HttpSession session ,int page, int size, String searchName) {
       ModelAndView mv = null;

        try {
            if(searchName == null && session.getAttribute("searchName") == null){
                searchName = "";
            }

            //判断翻页  搜索
            if(searchName == null && session.getAttribute("searchName") != null){
                searchName = (String) session.getAttribute("searchName");
            }
            session.setAttribute("searchName",searchName);

            PageHelper.startPage(page,size);
            List<Dishes> dishesList = dishesMapper.findDishes(searchName);
            //创建一个pageInfo对象
            PageInfo<Dishes> pageInfo = new PageInfo<>(dishesList);
            session.setAttribute("pageInfo",pageInfo);
            //mv.addObject("pageInfo",pageInfo);
             mv = new ModelAndView();
            mv.addObject("dishesList",dishesList);
        }catch (Exception e){
            System.out.println("124");
        }
        return mv;
    }

    @Override
    public void saveDishes(Dishes dishes , HttpServletRequest request , MultipartFile uploadpic)  {

        try{
            String fileName =   FileTool.fileUpload(request,uploadpic);
            //将我们的文件上传后的路径保存到对象里面
            dishes.setPic(fileName);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

        dishesMapper.saveDishes(dishes);
    }

    @Override
    public ModelAndView delDishes(String ids) {
        ModelAndView mv = new ModelAndView();
        String[] id = ids.split(",");
        try{
            for(int i = 0 ; i < id.length ; i ++){
                dishesMapper.delDishes(Integer.parseInt(id[i]));
            }
            mv.setViewName("redirect:findAll/1/4");
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

        return mv;
    }

    @Override
    public boolean updateDish(HttpServletRequest request ,String rpic , Dishes dishes , MultipartFile uploadpic) {
        try{
            if(uploadpic.isEmpty()){
                dishes.setPic(rpic);
            }
            else {
                String fileName = FileTool.fileUpload(request , uploadpic);
                dishes.setPic(fileName);
            }

        }catch(Exception e){

        }

        return dishesMapper.updateDish(dishes);
    }

    @Override
    public ModelAndView showUpdate(HttpServletRequest request,Integer id) {
        ModelAndView mv = new ModelAndView();

        try{
            Dishes dishes = dishesMapper.findById(id).get(0);
            List<DishesType> typeList =  typeMapper.findAll();
            mv.addObject("dishes",dishes);
            mv.addObject("typeList",typeList);
            mv.setViewName("/dishes-update");
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return mv;
    }

    @Override
    public ModelAndView showAdd() {
        ModelAndView mv = new ModelAndView();
        try{
            List<DishesType> typeList = typeMapper.findAll();
            mv.addObject("typeList",typeList);
            mv.setViewName("/dishes-add");

        }catch (Exception e){
            System.out.println(e.getMessage());
        }
        return mv;
    }


}
