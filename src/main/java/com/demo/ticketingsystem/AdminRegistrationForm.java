/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.demo.ticketingsystem;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Column;
import javax.persistence.Table;

/**
 *
 * @author sofiyadesai
 */
@Entity
@Table(name = "RegisterAdmin")
public class AdminRegistrationForm {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "adminfullname", nullable = false)
    private String adminfullname;
    @Column(name = "adminemail", nullable = false, unique = true)
    private String adminemail;
    @Column(name = "adminpassword", nullable = false)
    private String adminpassword;
    
    public AdminRegistrationForm(String adminfullname, String adminemail, String adminpassword) {
        this.adminfullname = adminfullname;
        this.adminemail = adminemail;
        this.adminpassword = adminpassword;
    }
    
    public AdminRegistrationForm() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public String getAdminfullname() {
        return adminfullname;
    }

    public void setAdminfullname(String adminfullname) {
        this.adminfullname = adminfullname;
    }

    public String getAdminemail() {
        return adminemail;
    }

    public void setAdminemail(String adminemail) {
        this.adminemail = adminemail;
    }

    public String getAdminpassword() {
        return adminpassword;
    }

    public void setAdminpassword(String adminpassword) {
        this.adminpassword = adminpassword;
    }

    @Override
    public String toString() {
        return "UserRegistrationForm{" +
                "fullname='" + adminfullname + '\'' +
                ", email='" + adminemail + '\'' +
                ", password='" + adminpassword + '\'' +
                '}';
    }
}