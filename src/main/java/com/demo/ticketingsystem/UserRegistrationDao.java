package com.demo.ticketingsystem;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


import jakarta.persistence.*;
import java.util.List;

public class UserRegistrationDao {
    private static UserRegistrationDao instance;
    private EntityManagerFactory emf;

    private UserRegistrationDao() {
        emf = Persistence.createEntityManagerFactory("my-persistence-unit");
    }

    public static UserRegistrationDao getInstance() {
        if (instance == null) {
            instance = new UserRegistrationDao();
        }
        return instance;
    }

    public List<UserRegistrationForm> findAll() {
        EntityManager em = emf.createEntityManager();
        List<UserRegistrationForm> users = em.createQuery("SELECT u FROM UserRegistration u", UserRegistrationForm.class).getResultList();
        em.close();
        return users;
    }

    public UserRegistrationForm findById(Long id) {
        EntityManager em = emf.createEntityManager();
        UserRegistrationForm user = em.find(UserRegistrationForm.class, id);
        em.close();
        return user;
    }

    public UserRegistrationForm findByEmail(String email) {
        EntityManager em = emf.createEntityManager();
        TypedQuery<UserRegistrationForm> query = em.createQuery("SELECT u FROM UserRegistration u WHERE u.email = :email", UserRegistrationForm.class);
        query.setParameter("email", email);
        UserRegistrationForm user = query.getResultList().stream().findFirst().orElse(null);
        em.close();
        return user;
    }

    public void save(UserRegistrationForm user) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(user);
        em.getTransaction().commit();
        em.close();
    }

    public void merge(UserRegistrationForm user) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.merge(user);
        em.getTransaction().commit();
        em.close();
    }

    public void delete(UserRegistrationForm user) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.remove(em.contains(user) ? user : em.merge(user));
        em.getTransaction().commit();
        em.close();
    }
}