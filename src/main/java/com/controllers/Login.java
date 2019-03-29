package com.controllers;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import pojos.Users;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/login")
public class Login extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
//        SessionFactory sessionFactory = new Configuration().configure().addAnnotatedClass(Users.class).buildSessionFactory();
//        Session session = sessionFactory.openSession();
//        session.beginTransaction();
//        Query query = session.createQuery("from Users where id=1");
//        Users users = (Users) query.uniqueResult();
//        session.getTransaction().commit();
//        session.close();
//        response.getWriter().println(users.toString());
        response.sendRedirect("Profile.jsp");
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
