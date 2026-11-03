<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Marvel Superheros Gallery</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

  <!-- Navigation menu -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand fw-bold" href="index.html">Marvel Superheroes Gallery</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="menu">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link active" href="index.html">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="details.html">Details</a></li>
          <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
          <li class="nav-item"><a class="nav-link" href="new-character-form.html">Add a Character</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page heading and search bar -->
  <header class="bg-dark text-white py-5">
    <div class="container">
      <h1 class="display-4 fw-bold">The Avengers Roster</h1>
      <p class="lead">Five of the most famous members of Marvel's most famous super-team.</p>

      <form class="row g-2 mt-3" style="max-width: 500px;">
        <div class="col-8">
          <input type="text" class="form-control" placeholder="Search by name or role...">
        </div>
        <div class="col-4">
          <button type="submit" class="btn btn-warning w-100">Search</button>
        </div>
      </form>
      <p class="text-secondary small mt-2">Note: the search bar does not work yet.</p>
    </div>
  </header>

  <!-- Character cards -->
  <main class="container py-5">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">

      <div class="col">
        <div class="card h-100 shadow-sm">
          <img src="images/spidey.jpg" class="card-img-top" alt="Spider-Man">
          <div class="card-body">
            <h5 class="card-title">Spider-Man</h5>
            <h6 class="card-subtitle mb-3 text-muted">Peter Parker</h6>
            <ul class="list-group list-group-flush mb-3">
              <li class="list-group-item"><strong>Universe:</strong> Marvel</li>
              <li class="list-group-item"><strong>Role:</strong> Street-level hero</li>
              <li class="list-group-item"><strong>Species:</strong> Enhanced human</li>
              <li class="list-group-item"><strong>Power Level:</strong> High</li>
            </ul>
            <p class="card-text">A high school student who was bitten by a radioactive
            spider. He has super strength, can climb walls, and built his own web-shooters.</p>
            <a href="details.html" class="btn btn-warning">View Details</a>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card h-100 shadow-sm">
          <img src="images/ironman.jpg" class="card-img-top" alt="Iron Man">
          <div class="card-body">
            <h5 class="card-title">Iron Man</h5>
            <h6 class="card-subtitle mb-3 text-muted">Tony Stark</h6>
            <ul class="list-group list-group-flush mb-3">
              <li class="list-group-item"><strong>Universe:</strong> Marvel</li>
              <li class="list-group-item"><strong>Role:</strong> Inventor</li>
              <li class="list-group-item"><strong>Species:</strong> Human</li>
              <li class="list-group-item"><strong>Power Level:</strong> High</li>
            </ul>
            <p class="card-text">A billionaire inventor who built a powered suit of armor.
            All of his abilities come from technology he designed himself.</p>
            <a href="details.html" class="btn btn-warning">View Details</a>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card h-100 shadow-sm">
          <img src="images/thor.jpg" class="card-img-top" alt="Thor">
          <div class="card-body">
            <h5 class="card-title">Thor</h5>
            <h6 class="card-subtitle mb-3 text-muted">Thor Odinson</h6>
            <ul class="list-group list-group-flush mb-3">
              <li class="list-group-item"><strong>Universe:</strong> Asgard</li>
              <li class="list-group-item"><strong>Role:</strong> Heavy hitter</li>
              <li class="list-group-item"><strong>Species:</strong> Asgardian</li>
              <li class="list-group-item"><strong>Power Level:</strong> Very high</li>
            </ul>
            <p class="card-text">The prince of Asgard. He controls lightning and storms and
            carries the hammer Mjolnir, which only the worthy can lift.</p>
            <a href="details.html" class="btn btn-warning">View Details</a>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card h-100 shadow-sm">
          <img src="images/hulk.jpg" class="card-img-top" alt="Hulk">
          <div class="card-body">
            <h5 class="card-title">Hulk</h5>
            <h6 class="card-subtitle mb-3 text-muted">Bruce Banner</h6>
            <ul class="list-group list-group-flush mb-3">
              <li class="list-group-item"><strong>Universe:</strong> Marvel</li>
              <li class="list-group-item"><strong>Role:</strong> Heavy hitter</li>
              <li class="list-group-item"><strong>Species:</strong> Mutated human</li>
              <li class="list-group-item"><strong>Power Level:</strong> Very high</li>
            </ul>
            <p class="card-text">A scientist who was caught in a gamma bomb explosion. When
            he gets angry he turns into a giant green figure with enormous strength.</p>
            <a href="details.html" class="btn btn-warning">View Details</a>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card h-100 shadow-sm">
          <img src="images/captainamerica.jpg" class="card-img-top" alt="Captain America">
          <div class="card-body">
            <h5 class="card-title">Captain America</h5>
            <h6 class="card-subtitle mb-3 text-muted">Steve Rogers</h6>
            <ul class="list-group list-group-flush mb-3">
              <li class="list-group-item"><strong>Universe:</strong> Marvel</li>
              <li class="list-group-item"><strong>Role:</strong> Team leader</li>
              <li class="list-group-item"><strong>Species:</strong> Enhanced human</li>
              <li class="list-group-item"><strong>Power Level:</strong> Peak human</li>
            </ul>
            <p class="card-text">A soldier from World War II who took a super-soldier serum.
            He was frozen for decades and now leads the team in the field.</p>
            <a href="details.html" class="btn btn-warning">View Details</a>
          </div>
        </div>
      </div>

    </div>
  </main>

  <footer class="bg-dark text-secondary text-center py-4">
    <p class="mb-0">Marvel Superheros Gallery - CSC 340 project by Goran Ali</p>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>