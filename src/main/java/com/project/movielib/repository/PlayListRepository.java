package com.project.movielib.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.movielib.model.Movie;
import com.project.movielib.model.Playlist;
import com.project.movielib.model.User;

import jakarta.transaction.Transactional;

@Repository
public interface PlayListRepository extends JpaRepository<Playlist, Long>{

	@Query("SELECT p.movies FROM Playlist p WHERE p.user.id = :userId")
	List<Movie> findAllMoviesInPlaylistByUserId(@Param("userId") long userId);

	@Query("SELECT CASE WHEN COUNT(p) > 0 THEN true ELSE false END FROM Playlist p JOIN p.movies m WHERE p.id = ?1 AND m.id = ?2")
    public boolean existsByUserIdAndPlaylistId(long playlistId, long movieId);
	

    
}
