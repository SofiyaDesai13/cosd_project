package com.demo.ticketingsystem;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ticket_answers")
public class TicketAnswer {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "ticket_id", nullable = false, unique = true)
    private String ticketId;
    
    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "department", nullable = false)
    private String department;

    @Column(name = "severity", nullable = false)
    private String severity;

    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "attachment")
    private String attachment;

    @Column(name = "query", nullable = false)
    private String query;
    
    @Column(name = "comments", nullable = false)
    private String comments;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTicketId() {
        return ticketId;
    }

    public void setTicketId(String ticketId) {
        this.ticketId = ticketId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getSeverity() {
        return severity;
    }

    public void setSeverity(String severity) {
        this.severity = severity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAttachment() {
        return attachment;
    }

    public void setAttachment(String attachment) {
        this.attachment = attachment;
    }
    
    public String getQuery() {
        return query;
    }

    public void setQuery(String query) {
        this.query = query;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }  

    public TicketAnswer() {
    }

    public TicketAnswer(String ticketId, String title, String department, String severity, String description, String attachment, String query, String comments) {
        this.ticketId = ticketId;
        this.title = title;
        this.department = department;
        this.severity = severity;
        this.description = description;
        this.attachment = attachment;
        this.query = query;
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "TicketAnswer{" +
                "ticketId='" + ticketId + '\'' +
                ", title='" + title + '\'' +
                ", department='" + department + '\'' +
                ", severity='" + severity + '\'' +
                ", description='" + description + '\'' +
                ", attachment='" + attachment + '\'' +
                ", query='" + query + '\'' +
                ", comments='" + comments + '\'' +
                '}';
    }
}