<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add a Character</title>
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
          <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
          <li class="nav-item"><a class="nav-link active" href="new-character-form.html">Add a Character</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <main class="container my-5">
    <div class="card shadow-sm">
      <div class="card-body p-4">

        <h1 class="fw-bold">Add a New Character</h1>
        <p>Fill out the same information that appears on the cards on the home page.</p>

        <div class="alert alert-warning">
          Important!: this form does not save anything yet because the site has no backend.
        </div>

        <form class="row g-3">

          <div class="col-md-6">
            <label for="name" class="form-label">Character Name</label>
            <input type="text" class="form-control" id="name" placeholder="Black Panther">
          </div>

          <div class="col-md-6">
            <label for="realname" class="form-label">Real Name</label>
            <input type="text" class="form-control" id="realname" placeholder="T'Challa">
          </div>

          <div class="col-md-6">
            <label for="universe" class="form-label">Universe</label>
            <input type="text" class="form-control" id="universe" placeholder="Marvel">
          </div>

          <div class="col-md-6">
            <label for="role" class="form-label">Role</label>
            <select class="form-select" id="role">
              <option>Team leader</option>
              <option>Heavy hitter</option>
              <option>Street-level hero</option>
              <option>Inventor</option>
              <option>Villain</option>
            </select>
          </div>

          <div class="col-md-6">
            <label for="species" class="form-label">Species</label>
            <input type="text" class="form-control" id="species" placeholder="Human">
          </div>

          <div class="col-md-6">
            <label for="power" class="form-label">Power Level</label>
            <select class="form-select" id="power">
              <option>Peak human</option>
              <option>High</option>
              <option>Very high</option>
              <option>Cosmic</option>
            </select>
          </div>

          <div class="col-12">
            <label for="image" class="form-label">Image URL</label>
            <input type="text" class="form-control" id="image" placeholder="images/example.jpg">
          </div>

          <div class="col-12">
            <label for="description" class="form-label">Short Description</label>
            <textarea class="form-control" id="description" rows="4"
              placeholder="Two or three sentences about the character."></textarea>
          </div>

          <div class="col-12">
            <button type="submit" class="btn btn-warning">Add Character</button>
            <a href="index.html" class="btn btn-outline-secondary">Cancel</a>
          </div>

        </form>
        
        <hr class="my-4">

        <h2 class="h5">Other Pages</h2>
        <ul>
          <li><a href="index.html">Back to the Marvel Superheroes Gallery</a></li>
          <li><a href="details.html">See a finished character page</a></li>
          <li><a href="about.html">About this website</a></li>
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