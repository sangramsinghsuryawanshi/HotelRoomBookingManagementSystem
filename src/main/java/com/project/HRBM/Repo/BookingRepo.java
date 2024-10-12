package com.project.HRBM.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.HRBM.Model.Booking;

public interface BookingRepo extends JpaRepository<Booking, Integer> {

}
