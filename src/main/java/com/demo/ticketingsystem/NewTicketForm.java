/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.demo.ticketingsystem;

/**
 *
 * @author sofiyadesai
 */
public class NewTicketForm {
    private String ticketId;
    private String title;
    private String department;
    private String severity;
    private String description;
    private String attachment; // File path or byte array, depending on implementation

    // Constructor
    public NewTicketForm(String ticketId, String title, String department, String severity, String description, String attachment) {
        this.ticketId = ticketId;
        this.title = title;
        this.department = department;
        this.severity = severity;
        this.description = description;
        this.attachment = attachment;
    }

    // Getters and setters
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

    // toString method for debugging
    @Override
    public String toString() {
        return "NewTicketForm{" +
                "ticketId='" + ticketId + '\'' +
                ", title='" + title + '\'' +
                ", department='" + department + '\'' +
                ", severity='" + severity + '\'' +
                ", description='" + description + '\'' +
                ", attachment='" + attachment + '\'' +
                '}';
    }
}

