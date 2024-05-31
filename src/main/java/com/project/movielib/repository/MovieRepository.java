package com.project.movielib.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.movielib.model.Movie;

public interface MovieRepository extends JpaRepository<Movie, Long>{

	@Query("select s from Movie s where s.user.id = ?1")
	List<Movie> getallbyid(int userId);

	
}
