package com.project.movielib.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.movielib.model.Movie;
import com.project.movielib.model.User;
import com.project.movielib.service.UserService;

import jakarta.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;



import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.UUID;

import javax.sql.rowset.serial.SerialBlob;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.*;


@Controller
public class ClientController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/register")
    public ModelAndView homepage() {
      ModelAndView mv=new ModelAndView("userregister");
      return mv;
    }
	
	
	
	@GetMapping("/")
    public ModelAndView landing() {
      ModelAndView mv=new ModelAndView("login");
      return mv;
    }
	
	@GetMapping("/login")
    public ModelAndView userlogin() {
      ModelAndView mv=new ModelAndView("login");
      return mv;
    }
	
	
	
	@PostMapping("registration")
	public ModelAndView addapplicant(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		String msg = null;
		try {
			
			String fname = request.getParameter("firstname");
			String lname = request.getParameter("lastname");
			String email = request.getParameter("email");
			String gender = request.getParameter("gender");
			String pwd = request.getParameter("password");
			String contact = request.getParameter("contactnumber");
			String address = request.getParameter("address");
			
    
			User user = new User();
			user.setFirstname(fname);
			user.setLastname(lname);
			user.setEmail(email);
			user.setGender(gender);
			user.setGender(gender);
			user.setPassword(pwd);
			user.setContactno(contact);
			user.setAddress(address);
			
		    
		    msg = userService.register(user);
			 
            mv.setViewName("usersucessfulloginafterregistration");
			mv.addObject("message", msg);
			
		}
		catch (Exception e) {
			mv.setViewName("userregister");
			msg = "Registration Failed & Provide Valid Details..!!";
			mv.addObject("message", msg);
		}
		return mv;
	}
	
	
	@PostMapping("checkuserlogin")
	public ModelAndView ckeckapplogin(HttpServletRequest request) {
		
		String uname = request.getParameter("email");
		String pwd = request.getParameter("password1");
		HttpSession session = request.getSession();
		User c = userService.checkuserlogin(uname, pwd);
		
		ModelAndView mv =new ModelAndView();
		if(c!=null ) {
		
			session.setAttribute("cid",c.getId()); 
			session.setAttribute("fname", c.getFirstname());
		    session.setAttribute("lname",c.getLastname());
			session.setAttribute("email",c.getEmail());
//			session.setAttribute("address",c.getAddress());
//			session.setAttribute("contact",c.getContactno());
			List<Movie> movielist = userService.getallMovie();
		      mv.addObject("movielist", movielist);
			mv.setViewName("homepage");
		}else  {
			mv.setViewName("login");
			mv.addObject("message", "Invalid Login..!");
					}
		return mv;
	}
	
	
	
	@GetMapping("/home")
	public ModelAndView home(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView("homepage");
	    HttpSession session = request.getSession();
	    int sid = (int) session.getAttribute("cid"); 
	    String email1 = (String) session.getAttribute("email");
	    String fname = (String) session.getAttribute("fname");
	    String lname = (String) session.getAttribute("lname");
	    mv.addObject("cid", sid);
	    mv.addObject("email", email1);
	    mv.addObject("fname", fname);
	    mv.addObject("lname", lname);
	    List<Movie> movielist = userService.getallMovie();
	      mv.addObject("movielist", movielist);
	    
	    return mv;
	}

	
	
	@GetMapping("/omdb-api")
    public ModelAndView Home1() {
      ModelAndView mv=new ModelAndView("page1");
      return mv;
    }
	
	
	
	@GetMapping("/upload")
    public ModelAndView upload() {
      ModelAndView mv=new ModelAndView("uploadvideo");
      return mv;
    }
	
	
	@PostMapping("uploadimage")
    public ModelAndView addImage(HttpServletRequest request, @RequestParam("image") MultipartFile imageFile) {
        ModelAndView mv = new ModelAndView();
        String msg = null;
        try {
            // Get parameters from the request
            String title = request.getParameter("title");
            LocalDate releaseDate = LocalDate.parse(request.getParameter("releaseDate"));
            String description = request.getParameter("description");
            String genre = request.getParameter("genre");

            // Get the user ID from the session
            HttpSession session = request.getSession();
            int userId = (int) session.getAttribute("cid");
            
            // Retrieve the user from the database
            User user = userService.getUserById(userId);

            // Convert the uploaded image file to Blob
            Blob imageBlob = new SerialBlob(imageFile.getBytes());

            // Create a new Movie object and set its properties
            Movie movie = new Movie();
            movie.setTitle(title);
            movie.setReleaseDate(releaseDate);
            movie.setDescription(description);
            movie.setGenre(genre);
            movie.setUser(user);
            movie.setImage(imageBlob);

            // Save the Movie object using your service method
            String result = userService.uploadVideo(movie);

            // Prepare the ModelAndView based on the result
            
                mv.setViewName("uploadvideo");
                msg = "Movie uploaded successfully!";
            
            mv.addObject("message", msg);
        } catch (Exception e) {
            mv.setViewName("uploadvideo");
            msg = "Uploading failed. Please provide valid details.";
            mv.addObject("message", e);
        }
        return mv;
    }

//	@GetMapping("viewallmovies")
//    public ModelAndView viewallmovies() {
//      ModelAndView mv=new ModelAndView("homepage");
//      List<Movie> movielist = userService.getallMovie();
//      mv.addObject("movielist", movielist);
//      return mv;
//    }
	
	@GetMapping("displayproductimage")
	public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	{
	  Movie product =  userService.getmovie(id);
	  byte [] imageBytes = null;
	  imageBytes = product.getImage().getBytes(1,(int) product.getImage().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	
	
	@GetMapping("getallmymovies")
	public ModelAndView getallmoveisbyid(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView("mylib");
	    HttpSession session = request.getSession();
	    int sid = (int) session.getAttribute("cid"); 
	    String email1 = (String) session.getAttribute("email");
	    String fname = (String) session.getAttribute("fname");
	    String lname = (String) session.getAttribute("lname");
	    mv.addObject("cid", sid);
	    mv.addObject("email", email1);
	    mv.addObject("fname", fname);
	    mv.addObject("lname", lname);
	    List<Movie> movielist = userService.getmyarticularmovie(sid);
	    mv.addObject("movielist", movielist);
	    
	    return mv;
	}
	
	
	@GetMapping("/getMovieDetails")
    public Movie getMovieDetails(@RequestParam Long id) {
       
        Movie movie = userService.getmovie(id);
        return movie;
    }

	
	
	@GetMapping("/api/movies/{id}")
    public ResponseEntity<Movie> getMovieById(@PathVariable("id") Long id) {
        Optional<Movie> movie = userService.getMovieById(id);
        return movie.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }
	
	@GetMapping("movie-details")
    public ModelAndView adminviewalljobs(@RequestParam("id") int id , HttpServletRequest request) {
      ModelAndView mv=new ModelAndView("viewmoviebyid");
      HttpSession session = request.getSession();
	    int sid = (int) session.getAttribute("cid"); 
	    String email1 = (String) session.getAttribute("email");
	    String fname = (String) session.getAttribute("fname");
	    String lname = (String) session.getAttribute("lname");
	    mv.addObject("cid", sid);
	    mv.addObject("email", email1);
	    mv.addObject("fname", fname);
	    mv.addObject("lname", lname);
      Movie j = userService.getmovie(id);
         mv.addObject("j", j);
      return mv;
    }
	
//	@PostMapping("addtomyplaylist")
//	public ModelAndView addToMyPlaylist(@RequestParam("movieId") long movieId, HttpSession session) {
//		ModelAndView mv=new ModelAndView();
//		Integer userId = (Integer) session.getAttribute("cid");
//        userService.addToPlaylist(userId, movieId);
//        List<Movie> movielist = userService.getallMovie();
//	      mv.addObject("movielist", movielist);
//	      
//        mv.setViewName("homepage");
//        return mv;
//    }
	
	@PostMapping("addtomyplaylist")
	public ModelAndView addToMyPlaylist(@RequestParam("movieId") long movieId, HttpSession session) {
	    ModelAndView mv = new ModelAndView();
	    Integer userId = (Integer) session.getAttribute("cid");

	    // Check if movie already exists in the playlist
	    boolean alreadyAdded = userService.addToPlaylistcheck(userId, movieId);

	    if (!alreadyAdded) {
	        // If movie is not already added, add it to the playlist
	        userService.addToPlaylist(userId, movieId);
	        mv.addObject("message", "Movie Sucessfully added to your playlist ..!");
	    } else {
	        // If movie is already added, handle accordingly (e.g., show a message)
	        // For example, you could set an attribute to show a message on the frontend
	        mv.addObject("message", "Movie already added to your playlist.");
	    }

	    // Get updated movie list
	    List<Movie> movielist = userService.getallMovie();
	    mv.addObject("movielist", movielist);

	    mv.setViewName("myplaylist");
	    return mv;
	}

	
	
	@GetMapping("playlist-details")
    public ModelAndView playlistdetails(HttpServletRequest request) {
      ModelAndView mv=new ModelAndView("myplaylist");
      HttpSession session = request.getSession();
	    int sid = (int) session.getAttribute("cid"); 
	    String email1 = (String) session.getAttribute("email");
	    String fname = (String) session.getAttribute("fname");
	    String lname = (String) session.getAttribute("lname");
	    mv.addObject("cid", sid);
	    mv.addObject("email", email1);
	    mv.addObject("fname", fname);
	    mv.addObject("lname", lname);
	    List<Movie> movielist = userService.getallplaylist(sid);
	    Set<Movie> uniqueMovies = new HashSet<>(movielist);
	    mv.addObject("movielist", new ArrayList<>(uniqueMovies));

      return mv;
    }
	
	
	@GetMapping("movie-details-fromplaylist")
    public ModelAndView moviedetailsfromplaylist(@RequestParam("id") int id , HttpServletRequest request) {
      ModelAndView mv=new ModelAndView("viewmoviebyidinplaylist");
      HttpSession session = request.getSession();
	    int sid = (int) session.getAttribute("cid"); 
	    String email1 = (String) session.getAttribute("email");
	    String fname = (String) session.getAttribute("fname");
	    String lname = (String) session.getAttribute("lname");
	    mv.addObject("cid", sid);
	    mv.addObject("email", email1);
	    mv.addObject("fname", fname);
	    mv.addObject("lname", lname);
      Movie j = userService.getmovie(id);
         mv.addObject("j", j);
      return mv;
    }
	
	
	
}
