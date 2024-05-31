package com.project.movielib.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.movielib.model.Movie;
import com.project.movielib.model.User;
import java.util.*;


@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
	
	
	@Query("select s from User s where s.email=?1 and s.password=?2")
	public User checkUserLogin(String email , String pass);
	
	
	
	
}
