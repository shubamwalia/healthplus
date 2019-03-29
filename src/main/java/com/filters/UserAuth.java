package com.filters;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import pojos.Users;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/login")
public class UserAuth implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)resp;

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        SessionFactory sessionFactory = new Configuration().configure().addAnnotatedClass(Users.class).buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Users where username=? AND password=?");
        query.setString(0,username);
        query.setString(1,password);
        Users users = (Users) query.uniqueResult();
        session.getTransaction().commit();
        session.close();

        if(users != null) {
            HttpSession session1 = request.getSession();
            session1.setAttribute("user",users);
            chain.doFilter(req, resp);
        }
        else{
            response.sendRedirect("Index.jsp");
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
