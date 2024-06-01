<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Library</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
    .message-box {
             
    
    display: none;
    position: fixed;
    top: 20px;
    right: 20px;
    padding: 20px;
    background-color: #4CAF50; /* Green background */
    color: white; /* Black text */
    font-weight: bold; /* Bold font */
    border-radius: 5px;
    z-index: 9999;
        }

        /* Fading animation */
        @keyframes fadeOut {
            from { opacity: 1; }
            to { opacity: 0; }
        }
        
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .header {
            background-color: #ff0000;
            color: white;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }
        .header .logo {
            font-size: 24px;
            font-weight: bold;
        }
        .header .search-bar {
            width: 50%;
            display: flex;
            align-items: center;
        }
        .header .search-bar input {
            width: 100%;
            padding: 8px;
            border: none;
            border-radius: 4px 0 0 4px;
        }
        .header .search-bar button {
            padding: 8px;
            border: none;
            background-color: #e5e5e5;
            border-radius: 0 4px 4px 0;
        }
        .header .avatar {
            position: relative;
            display: flex;
            align-items: center;
            cursor: pointer;
            padding-right: 30px;
        }
        .header .avatar img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }
        .header .dropdown {
            display: none;
            position: absolute;
            top: 50px;
            right: 0;
            background-color: white;
            border: 1px solid #e5e5e5;
            border-radius: 4px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1;
        }
        .header .dropdown ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .header .dropdown ul li {
            padding: 10px 20px;
            cursor: pointer;
            color: #808080;
        }
        .header .dropdown ul li:hover {
            background-color: #f0f0f0;
            color: black;
        }
        .sidebar {
            width: 200px;
            background-color: #ffffff;
            position: fixed;
            top: 50px;
            bottom: 0;
            overflow-y: auto;
            border-right: 1px solid #e5e5e5;
            transition: transform 0.3s ease;
            padding-top: 10px; /* Added padding */
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .sidebar ul li {
            padding: 15px 20px;
            display: flex;
            align-items: center;
            border-radius: 10px; /* Rounded corners */
            transition: background-color 0.3s, color 0.3s;
        }
        .sidebar ul li:hover {
            background-color: #e5e5e5; /* Hover effect */
            cursor: pointer;
        }
        .sidebar ul li a {
            text-decoration: none;
            color: inherit;
            display: flex;
            align-items: center;
            width: 100%;
        }
        .sidebar ul li i {
            margin-right: 10px; /* Icon margin */
            font-size: 18px; /* Icon size */
        }
        .main-content {
            margin-left: 220px;
            padding: 20px;
            padding-top: 70px;
        }
        .movies-row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .video-thumbnail {
            width: 23%;
            margin-bottom: 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            border-radius: 4px;
            overflow: hidden;
            box-sizing: border-box;
            
        }
        
        .video-thumbnail:hover {
    background-color: #f0f0f0; /* Change to the desired background color on hover */
    cursor: pointer; /* Change cursor to pointer */
    transition: background-color 0.3s; /* Add transition effect */
    transition: border 0.3s;
    border: 2px solid #000000;
}
        
        
        
        .video-thumbnail img {
            width: 100%;
            height: 270px;
            object-fit: cover;
        }
        .video-thumbnail .info {
            padding: 10px;
            position: relative;
        }
        .video-thumbnail .info h4 {
            margin: 0;
            font-size: 20px;
            font-style: italic;
        }
        .video-thumbnail .info p {
            margin: 0 0 30px;
            background: #777;
            border-radius: 50px;
            font-size: 12px;
            color: #fff;
            padding: 2px 10px;
            text-transform: uppercase;
        }
        .video-thumbnail .info p.action {
            background-color: #ff4500; /* OrangeRed */
        }
        .video-thumbnail .info p.comedy {
            background-color: #ffdb58; /* Mustard */
        }
        .video-thumbnail .info p.drama {
            background-color: #8b0000; /* DarkRed */
        }
        .video-thumbnail .info p.horror {
            background-color: #000000; /* Black */
        }
        .video-thumbnail .info p.romance {
            background-color: #ff69b4; /* HotPink */
        }
        .video-thumbnail .info p.sci-fi {
            background-color: #00ced1; /* DarkTurquoise */
        }
        .video-thumbnail .info p.thriller {
            background-color: #4b0082; /* Indigo */
        }
        .video-thumbnail .info p.drama,
        .video-thumbnail .info p.action,
        .video-thumbnail .info p.comedy,
        .video-thumbnail .info p.horror,
        .video-thumbnail .info p.romance,
        .video-thumbnail .info p.sci-fi,
        .video-thumbnail .info p.thriller {
            max-width: 58px; /* Adjust the value as needed */
            margin-bottom: 10px;
            margin-top: 10px;
        }
        .video-thumbnail .info .view-button {
            display: inline-block;
            padding: 8px 16px;
            background-color: #4CAF50; /* Green */
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            font-size: 14px;
            transition: background-color 0.3s;
            position: absolute;
            bottom: 10px;
            right: 10px;
        }
        .video-thumbnail .info .view-button:hover {
            background-color: #45a049; /* Darker green */
        }
        /* Modal styling */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            padding-top: 60px;
        }
        .modal-content {
            background-color: white;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 500px;
            position: relative;
            border-radius: 4px;
        }
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        /* Responsive Styling */
        @media (max-width: 768px) {
            .sidebar {
                transform: translateX(-100%);
            }
            .sidebar.open {
                transform: translateX(0);
            }
            .main-content {
                margin-left: 0;
                padding-top: 70px;
            }
            .hamburger {
                display: block;
                cursor: pointer;
                padding: 10px;
            }
            .hamburger span {
                display: block;
                width: 25px;
                height: 3px;
                background-color: white;
                margin: 5px 0;
            }
            .video-thumbnail {
                width: 100%;
            }
        }
        @media (min-width: 769px) {
            .hamburger {
                display: none;
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="hamburger" onclick="toggleSidebar()">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <div class="logo">Movie Library</div>
        <div class="search-bar">
            <input type="text" id="search-input" placeholder="Search" oninput="searchMovies()">
            <button>🔍</button>
        </div>
        <div class="avatar" onclick="toggleDropdown()">
            <img src="https://via.placeholder.com/40x40.png?text=Male" alt="User Avatar">
            <div class="dropdown" id="dropdown-menu">
                <ul>
                    <li onclick="showProfile()">Profile</li>
                    <li onclick="location.href='logout'">Logout</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="sidebar" id="sidebar">
   
        <ul>
            <li><a href="home"><i class="fas fa-home"></i>Home</a></li>
            <li><a href="getallmymovies"><i class="fas fa-film"></i>My Library</a></li>
            <li><a href="upload"><i class="fas fa-upload"></i>Upload</a></li>
             <li><a href="playlist-details"><i class="fas fa-list-ul"></i>My Playlist</a></li>
            
        </ul>
    </div>
  
    <div class="main-content">    
        <div class="movies-row">
            <c:forEach items="${movielist}" var="mov">
                <div class="video-thumbnail">
                    <img src='displayproductimage?id=${mov.id}'>
                    <div class="info">
                        <h4>${mov.title}</h4>
                        <p class="${mov.genre.toLowerCase()}">${mov.genre}</p>
                        <button class="view-button" onclick="redirectToMovieDetails(${mov.id})">View</button>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <!-- Profile Modal -->
    <div id="profileModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <p style="color: black;" class="title"><h4>${email}</h4></p>
            <p style="color: black;" class="title"><h4>${fname} ${lname}</h4></p>
        </div>
    </div>
    <!-- Movie Details Modal -->
    <div id="movieModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeMovieModal()">&times;</span>
            <div id="movieDetails">
                <!-- Movie details will be dynamically inserted here -->
            </div>
        </div>
    </div>

    <script>
        function toggleDropdown() {
            var dropdown = document.getElementById("dropdown-menu");
            if (dropdown.style.display === "none" || dropdown.style.display === "") {
                dropdown.style.display = "block";
            } else {
                dropdown.style.display = "none";
            }
        }

        function showProfile() {
            var modal = document.getElementById("profileModal");
            modal.style.display = "block";
            document.getElementById("dropdown-menu").style.display = "none";
        }

        function closeModal() {
            var modal = document.getElementById("profileModal");
            modal.style.display = "none";
        }

        function closeMovieModal() {
            var modal = document.getElementById("movieModal");
            modal.style.display = "none";
        }

        function toggleSidebar() {
            var sidebar = document.getElementById("sidebar");
            if (sidebar.classList.contains('open')) {
                sidebar.classList.remove('open');
            } else {
                sidebar.classList.add('open');
            }
        }

        // Close the modal if the user clicks outside of it
        window.onclick = function(event) {
            if (event.target == document.getElementById("profileModal")) {
                document.getElementById("profileModal").style.display = "none";
            }

            if (event.target == document.getElementById("movieModal")) {
                document.getElementById("movieModal").style.display = "none";
            }

            // Close the dropdown if the user clicks outside of it
            if (!event.target.matches('.avatar') && !event.target.matches('.avatar img')) {
                var dropdowns = document.getElementsByClassName("dropdown");
                for (var i = 0; i < dropdowns.length; i++) {
                    var openDropdown = dropdowns[i];
                    if (openDropdown.style.display === 'block') {
                        openDropdown.style.display = 'none';
                    }
                }
            }
        }

        

        function searchMovies() {
            // Get the input value from the search bar
            var input = document.getElementById("search-input").value.toLowerCase();
            // Get all the video-thumbnail elements
            var thumbnails = document.querySelectorAll(".video-thumbnail");

            // Loop through each video-thumbnail element
            thumbnails.forEach(function(thumbnail) {
                var title = thumbnail.querySelector("h4").innerText.toLowerCase();
                // Check if the movie title contains the input value
                if (title.indexOf(input) > -1) {
                    thumbnail.style.display = ""; // Show the thumbnail
                } else {
                    thumbnail.style.display = "none"; // Hide the thumbnail
                }
            });
        }
        
        
        function redirectToMovieDetails(movieId) {
            // Construct the URL for the movie details page
            var movieDetailsUrl = "/movie-details-fromplaylist?id=" + movieId;
            
            // Redirect to the movie details page
            window.location.href = movieDetailsUrl;
        }
   
        function displayMessageBox(message) {
        	var messageBox = document.createElement('div');
            messageBox.className = 'message-box';
            messageBox.innerText = message;
            document.body.appendChild(messageBox);

            // Display message box
            messageBox.style.display = 'block';

            // Set timeout to hide the message box after 10 seconds
            setTimeout(function() {
                messageBox.style.animation = 'fadeOut 1s forwards';
                // Remove the message box from DOM after fading out
                setTimeout(function() {
                    document.body.removeChild(messageBox);
                }, 1000);
            }, 2000); // 10 seconds
        }

        // Call the function with your message
        displayMessageBox("${message}");
    </script>
</body>
</html>
