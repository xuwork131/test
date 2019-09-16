package com.filterDemo;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by xuchao on 2019/8/8.
 */
public class JdbcDao {
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    User user = null;

    public User query(String username,String password){
        try {
            //注册数据库驱动
            Class.forName("com.mysql.jdbc.Driver");
            //获取数据库连接
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?characterEncoding=utf-8","root","xuchao131");
            //定义sql语句
            String sql = "select * from user where username = ? and password = ?";
            //获取预处理对象
            preparedStatement = connection.prepareStatement(sql);
            //给sql设置参数
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            //执行sql
            resultSet = preparedStatement.executeQuery();
            //遍历结果集
            while (resultSet.next()){
                user = new User();
                //将查询结果存入对象中
                user.setId(resultSet.getString("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setMoney(resultSet.getInt("money"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            //关闭资源
            if(resultSet!=null){
                try {
                    resultSet.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if(preparedStatement!=null){
                try {
                    preparedStatement.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if(connection!=null){
                try {
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return user;
    }

    public List<User> queryOther(String id){
        List<User> uList = new ArrayList();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?characterEncoding=utf-8","root","xuchao131");
            String sql = "select * from user where id <> ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                user = new User();
                user.setId(resultSet.getString("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setMoney(resultSet.getInt("money"));
                uList.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            if(resultSet!=null){
                try {
                    resultSet.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if(preparedStatement!=null){
                try {
                    preparedStatement.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if(connection!=null){
                try {
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return uList;
    }

    public Integer update(User user,String payee){
        int flag = 1;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?characterEncoding=utf-8","root","xuchao131");
            int money = user.getMoney();
            String id = user.getId();
            String sql = "update user set money = money-? where id = ?";
            String sql1 = "update user set money = money+? where id = ?";
            //connection.setAutoCommit(false);
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,money+"");
            preparedStatement.setString(2,id);
            int result = preparedStatement.executeUpdate();
            String s = null;
            s.length();
            preparedStatement = connection.prepareStatement(sql1);
            preparedStatement.setString(1,money+"");
            preparedStatement.setString(2,payee);
            int result1 = preparedStatement.executeUpdate();
            /*if (result==1 && result1==1){
                connection.commit();
            }*/
        } catch (Exception e) {
            /*try {
                connection.rollback();
                flag = 0;
            } catch (SQLException e1) {
                e1.printStackTrace();
            }*/
            e.printStackTrace();
        }finally {
            if(resultSet!=null){
                try {
                    resultSet.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if(preparedStatement!=null){
                try {
                    preparedStatement.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if(connection!=null){
                try {
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return flag;
    }
}
