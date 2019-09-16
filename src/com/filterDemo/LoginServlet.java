package com.filterDemo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by xuchao on 2019/7/17.
 */
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //获取用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //创建数据库层对象
        JdbcDao dao = new JdbcDao();
        //根据用户名密码查询用户
        User user = dao.query(username,password);
        //获取除登录人之外的其他用户信息
        List<User> uList = dao.queryOther(user.getId());
        //判断用户名和密码是否正确
        if(user!=null){
            //获取session
            HttpSession session = request.getSession();
            //把用户名和密码存入session中
            session.setAttribute("user",user);
            //把其他用户信息存入request域中
            request.setAttribute("uList",uList);
            //返回到登录成功页面
            request.getRequestDispatcher("/success.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
