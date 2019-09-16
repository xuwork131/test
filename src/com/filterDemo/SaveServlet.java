package com.filterDemo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by xuchao on 2019/7/17.
 */
public class SaveServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取参数
        String money = request.getParameter("money");
        String payee = request.getParameter("payee");
        //创建数据库层对象
        JdbcDao dao = new JdbcDao();
        //获取session
        HttpSession session = request.getSession();
        //从session中获取用户信息
        User user = (User) session.getAttribute("user");
        user.setMoney(Integer.parseInt(money));
        //根据用户id更新用户信息
        Integer result = dao.update(user,payee);
        if(result==1){
            //返回数据
            response.getWriter().print("true");
        }else{
            response.getWriter().print("false");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
