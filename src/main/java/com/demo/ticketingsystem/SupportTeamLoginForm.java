/**
 *
 * @author sofiyadesai
 */

package com.demo.ticketingsystem;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Column;

@Entity
@Table(name = "support_login_form")
public class SupportTeamLoginForm {

    @Id
    @Column(name = "email", nullable = false, unique = true)
    private String email;

    @Column(name = "password", nullable = false)
    private String password;

    public SupportTeamLoginForm() {
        super();
    }
    
    public SupportTeamLoginForm(String email, String password) {
        this.email = email;
        this.password = password;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "SupportTeamLoginForm{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
