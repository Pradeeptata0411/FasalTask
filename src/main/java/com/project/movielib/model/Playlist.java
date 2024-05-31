package com.project.movielib.model;
import jakarta.persistence.*;
import java.util.*;

@Entity
@Table(name = "playlist_table")
public class Playlist {

	
	 	@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "playlist_id")
	    private Long id;

	    @ManyToOne
	    @JoinColumn(name = "user_id", nullable = false)
	    private User user;

	    @ManyToMany
	    @JoinTable(
	        name = "playlist_movie",
	        joinColumns = @JoinColumn(name = "playlist_id"),
	        inverseJoinColumns = @JoinColumn(name = "movie_id")
	    )
	    private List<Movie> movies = new ArrayList<>();

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		public List<Movie> getMovies() {
			return movies;
		}

		public void setMovies(List<Movie> movies) {
			this.movies = movies;
		}
	    
	    
	    
	    
}
