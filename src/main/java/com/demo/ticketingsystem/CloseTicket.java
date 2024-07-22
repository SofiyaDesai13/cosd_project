/**
 *
 * @author sofiyadesai
 */

package com.demo.ticketingsystem;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;

@Entity
public class CloseTicket {

    @Id
    @Column(name = "ticketId", nullable = false, unique = true)
    private String ticketId;
    
    public CloseTicket() {
        super();
    }
    
    public CloseTicket(String ticketId) {
        this.ticketId = ticketId;
    }

    public String getTicketId() {
        return ticketId;
    }

    public void setTicketId(String ticketId) {
        this.ticketId = ticketId;
    }

    @Override
    public String toString() {
        return "CloseTicket{" +
                "ticketId='" + ticketId + '\'' +
                '}';
    }
}