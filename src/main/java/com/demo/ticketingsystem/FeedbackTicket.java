package com.demo.ticketingsystem;

import javax.persistence.*;

@Entity
@Table(name = "feedback_tickets")
public class FeedbackTicket {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "feedback", nullable = false)
    private String feedback;

    public FeedbackTicket() {
    }

    public FeedbackTicket(String name, String email, String feedback) {
        this.name = name;
        this.email = email;
        this.feedback = feedback;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    @Override
    public String toString() {
        return "FeedbackTicket{" +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", feedback='" + feedback + '\'' +
                '}';
    }
}