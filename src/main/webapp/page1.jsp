<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Library</title>
    <style>
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
        .sidebar {
            width: 200px;
            background-color: #ffffff;
            position: fixed;
            top: 50px;
            bottom: 0;
            overflow-y: auto;
            border-right: 1px solid #e5e5e5;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .sidebar ul li {
            margin: 10px;
        }
        .sidebar ul li a {
            text-decoration: none;
            color: white;
            background-color: #ff0000;
            padding: 10px 20px;
            display: block;
            text-align: center;
            border-radius: 4px;
        }
        .sidebar ul li a:hover {
            background-color: #cc0000;
        }
        .main-content {
            margin-left: 220px;
            padding: 20px;
        }
        .video-thumbnail {
            width: 23%;
            display: inline-block;
            margin: 1%;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            border-radius: 4px;
            overflow: hidden;
        }
        .video-thumbnail img {
            width: 100%;
        }
        .video-thumbnail .info {
            padding: 10px;
        }
        .video-thumbnail .info h4 {
            margin: 0;
            font-size: 16px;
        }
        .video-thumbnail .info p {
            margin: 5px 0 0;
            color: #666;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="logo">Movie Library</div>
        <div class="search-bar">
            <input type="text" id="search-input" placeholder="Search">
            <button onclick="searchMovies()">🔍</button>
        </div>
    </div>
    <div class="sidebar">
        <ul>
            <li><a href="home">Home</a></li>
            <li><a href="library">Library</a></li>
            <li><a href="upload">Upload</a></li>
            <li><a href="omdb-api">OMDb API</a></li>
        </ul>
    </div>
    <div class="main-content" id="main-content">
        <!-- Movie results will be displayed here -->
    </div>

    <script>
        const apiKey = '611d71d4';

        function searchMovies() {
            const query = document.getElementById('search-input').value;
            if (!query) {
                alert('Please enter a search term.');
                return;
            }
            const url = `http://www.omdbapi.com/?s=${query}&apikey=${apiKey}`;
            console.log('Fetching URL:', url);

            fetch(url)
                .then(response => {
                    console.log('Response received:', response);
                    return response.json();
                })
                .then(data => {
                    console.log('Data received:', data);
                    if (data.Response === "True") {
                        displayMovies(data.Search);
                    } else {
                        alert(data.Error);
                    }
                })
                .catch(error => console.error('Error fetching data:', error));
        }

        function displayMovies(movies) {
            const mainContent = document.getElementById('main-content');
            mainContent.innerHTML = ''; // Clear previous results

            if (!movies || movies.length === 0) {
                mainContent.innerHTML = '<p>No movies found.</p>';
                return;
            }

            movies.forEach(movie => {
                const movieElement = document.createElement('div');
                movieElement.className = 'video-thumbnail';

                const posterUrl = movie.Poster !== "N/A" ? movie.Poster : 'https://via.placeholder.com/320x180';
                
                movieElement.innerHTML = `
                    <img src="${posterUrl}" alt="Movie Poster">
                    <div class="info">
                        <h4>${movie.Title}</h4>
                        <p>${movie.Year}</p>
                    </div>
                `;

                mainContent.appendChild(movieElement);
            });
        }
    </script>
</body>
</html>
