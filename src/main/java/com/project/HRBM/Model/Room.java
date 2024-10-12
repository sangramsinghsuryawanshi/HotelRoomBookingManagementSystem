package com.project.HRBM.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Room {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int roomId;
    private String roomType;
    private String available; 
    private double price;

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public String getAvailable() {
        return available; 
    }

    public void setAvailable(String available) { 
        this.available = available;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Room(int roomId, String roomType, String available, double price) { 
        super();
        this.roomId = roomId;
        this.roomType = roomType;
        this.available = available;
        this.price = price;
    }

    public Room() {
        super();
        // Default constructor
    }
}
