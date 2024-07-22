/**
 *
 * @author sofiyadesai
 */

package com.demo.ticketingsystem;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;

@Entity
public class DeleteUser {

    @Id
    @Column(name = "email", nullable = false, unique = true)
    private String email;
    
    public DeleteUser() {
        super();
    }
    
    public DeleteUser(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "DeleteUser{" +
                "email='" + email + '\'' +
                '}';
    }
}