package com.project.movielib.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.movielib.model.Movie;
import com.project.movielib.model.Playlist;
import com.project.movielib.model.User;
import com.project.movielib.repository.MovieRepository;
import com.project.movielib.repository.PlayListRepository;
import com.project.movielib.repository.UserRepository;
import java.util.Optional;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private MovieRepository movieRepository;
	
	
	@Autowired
	private PlayListRepository playlistRepository;
	@Override
	public String register(User user) {
		userRepository.save(user);
		return "Registerd Sucessfuly";
	}

	@Override
	public User checkuserlogin(String email, String pass) {
		return userRepository.checkUserLogin(email, pass);
	}

	@Override
	public String uploadVideo(Movie movie) {
		movieRepository.save(movie);
		return "Movie Uploaded Sucessfully 😊👍";
	}

	@Override
	public User getUserById(int userId) {
		return userRepository.findById(userId).orElse(null);
	}

	@Override
	public List<Movie> getallMovie() {
		// TODO Auto-generated method stub
		return movieRepository.findAll();
	}

	@Override
	public Movie getmovie(long id) {
		return movieRepository.getById(id);
	}

	@Override
	public List<Movie> getmyarticularmovie(int id) {
	    return movieRepository.getallbyid(id);
	}

	public Optional<Movie> getMovieById(Long movieId) {
        return movieRepository.findById(movieId);
    }

	@Override
	public String addToPlaylist(long userId, long movieId) {
		// TODO Auto-generated method stub
		User user = userRepository.findById((int) userId).orElseThrow(() -> new RuntimeException("User not found"));
        Movie movie = movieRepository.findById(movieId).orElseThrow(() -> new RuntimeException("Movie not found"));

        Playlist playlist = user.getPlaylist();
        if (playlist == null) {
            playlist = new Playlist();
            playlist.setUser(user);
        }

        playlist.getMovies().add(movie);
        playlistRepository.save(playlist);
        
		return "Sucessfully Added";
	}

	@Override
	public List<Movie> getallplaylist(long userId) {
		// TODO Auto-generated method stub
		return playlistRepository.findAllMoviesInPlaylistByUserId(userId);
	}

	@Override
	public boolean addToPlaylistcheck(long userId, long movieId) {
		return  playlistRepository.existsByUserIdAndPlaylistId(userId, movieId);
		
	}



	
	
}
