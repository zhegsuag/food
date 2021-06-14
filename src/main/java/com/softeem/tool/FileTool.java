package com.softeem.tool;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

/**
 * 管理员
 *  * @author Administrator
 *  *
 */
//文件上传工具类
public class FileTool {

    public static String fileUpload(HttpServletRequest request , MultipartFile uploadpic){
           String fileName="";
           try{
               //获得文件要去保存到的路径
               String path = request.getSession().getServletContext().getRealPath("/view/images/");
               //判断文件保存路径是否存在
               File file = new File(path);
               if(!file.exists()){
                   //创建目录
                   file.mkdirs();
               }
               //获得上传文件的名称
               fileName = uploadpic.getOriginalFilename();
               //执行上传操作

               uploadpic.transferTo(new File(path,fileName));
           }catch(Exception e){

           }
           return "/images/"+fileName;
    }
}
