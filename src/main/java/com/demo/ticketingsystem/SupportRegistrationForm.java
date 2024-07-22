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
@Table(name = "RegisterSupport")
public class SupportRegistrationForm {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "supportfullname", nullable = false)
    private String supportfullname;
    @Column(name = "supportemail", nullable = false, unique = true)
    private String supportemail;
    @Column(name = "supportpassword", nullable = false)
    private String supportpassword;

    public SupportRegistrationForm() {
        super();
    }
    
    public SupportRegistrationForm(String supportfullname, String supportemail, String supportpassword) {
        this.supportfullname = supportfullname;
        this.supportemail = supportemail;
        this.supportpassword = supportpassword;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public String getSupportfullname() {
        return supportfullname;
    }

    public void setSupportfullname(String supportfullname) {
        this.supportfullname = supportfullname;
    }

    public String getSupportemail() {
        return supportemail;
    }

    public void setSupportemail(String supportemail) {
        this.supportemail = supportemail;
    }

    public String getSupportpassword() {
        return supportpassword;
    }

    public void setSupportpassword(String supportpassword) {
        this.supportpassword = supportpassword;
    }

    @Override
    public String toString() {
        return "UserRegistrationForm{" +
                "supportfullname='" + supportfullname + '\'' +
                ", supportemail='" + supportemail + '\'' +
                ", supportpassword='" + supportpassword + '\'' +
                '}';
    }
}