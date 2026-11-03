<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand fw-bold" href="index.html">Marvel Superheroes Gallery</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="menu">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="details.html">Details</a></li>
          <li class="nav-item"><a class="nav-link active" href="about.html">About</a></li>
          <li class="nav-item"><a class="nav-link" href="new-character-form.html">Add a Character</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <main class="container my-5">
    <div class="card shadow-sm">
      <div class="card-body p-4">

        <h1 class="fw-bold">About This Website</h1>

        <img src="images/comics.jpg" class="img-fluid rounded border my-3" alt="Comic books" style="max-width: 300px;">

        <h2 class="h4 mt-4">Why I Chose This Theme</h2>
        <p> I love Marvel Cinematic Universe, and superheros like Spider-man, Iron Man, and the others featured in the Gallery. 
            Growing up in Queens, New York, I was always closer to the MCU.  .</p>

        <p> I know a lot about them, and the information I presented showcases some of that information.</p>

        <h2 class="h4 mt-4">Design Choices</h2>
        <p>I used Bootstrap for the styling so the layout would stay consistent across all
        four pages without me writing the same CSS over and over. The character cards use
        Bootstrap's grid, which means they rearrange themselves automatically: three across
        on a laptop, two on a tablet, and one on a phone.</p>

        <p>I kept the color scheme simple. A dark navigation bar and header at the top,
        white cards on a light gray background, and yellow buttons so the links you can
        click stand out from the text you only read. The navigation bar sits at the top of
        every page with the same four links in the same order, so it never feels like you
        are lost.</p>

        <h2 class="h4 mt-4">How It Was Built</h2>
        <p>This site is HTML and Bootstrap only. There is no backend server, which is why
        the search bar on the home page and the form on the add a character page do not
        actually do anything yet. I added a short text next to both of them so visitors are
        not confused when nothing happens.</p>

        <h2 class="h4 mt-4">About Me</h2>
        <p>I am a Computer Science major with a Business minor at UNC Greensboro. Most of
        my time outside of class goes into a lot of things, like hanging out with friends, going to the gym,
        playing the piano, learning more about CS.</p>

        <hr class="my-4">

        <h2 class="h5">Other Pages</h2>
        <ul>
          <li><a href="index.html">See all five characters</a></li>
          <li><a href="details.html">Read the Spider-Man details page</a></li>
          <li><a href="new-character-form.html">Add a new character</a></li>
        </ul>

      </div>
    </div>
  </main>

  <footer class="bg-dark text-secondary text-center py-4">
    <p class="mb-0">Marvel Superheroes Gallery - CSC 340 project by Goran Ali</p>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>