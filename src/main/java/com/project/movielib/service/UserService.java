package com.project.movielib.service;

import java.util.*;
import com.project.movielib.model.Movie;
import com.project.movielib.model.User;

public interface UserService {

	public String register(User user);
	
	public User checkuserlogin(String email,String pass);
	
	public String uploadVideo(Movie movie);

	public User getUserById(int userId);
	
	public Movie getmovie(long id);
	
	public List<Movie> getmyarticularmovie(int id);
	
	public Optional<Movie> getMovieById(Long movieId);
	public List<Movie> getallMovie();
	
	
	
	public String addToPlaylist(long userId, long movieId);
	
	
	
	public List<Movie> getallplaylist(long userId);
	
	public boolean addToPlaylistcheck(long userId, long movieId);
	
	
	
	
}
