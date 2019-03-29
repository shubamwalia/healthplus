package com.controllers.com;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import pojos.Users;

public class App {
    public static void main(String[] args) {
        Users users = new Users();
        users.setName("Shubam");
        users.setEmail("shubam@gmail.com");
        users.setPassword("1234");
        users.setRole("admin");
        users.setUsername("shubam");

        SessionFactory sessionFactory = new Configuration().configure().addAnnotatedClass(Users.class).buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(users);
        session.getTransaction().commit();
        session.close();

    }
}
