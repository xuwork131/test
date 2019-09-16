package com.filterDemo;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by xuchao on 2019/7/18.
 */
public class FilterDemo implements Filter{
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //对请求和响应对象进行转换
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        //处理中文乱码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获取请求路径
        String path = request.getRequestURI();
        //判断请求中是否含有需要放行的内容
        if(path.indexOf("/login.jsp")>-1 || path.indexOf("/loginServlet")>-1){
            filterChain.doFilter(servletRequest,servletResponse);
        }else{
            //获取session
            HttpSession session = request.getSession();
            //从session中获取用户信息
            String username = (String)session.getAttribute("username");
            //用户是否登录
            if(username==null || "".equals(username)){
                //如果用户没有登录则跳转到登录页
                response.sendRedirect("/login.jsp");
            }else{
                filterChain.doFilter(servletRequest,servletResponse);
            }
        }
    }

    @Override
    public void destroy() {

    }
}
