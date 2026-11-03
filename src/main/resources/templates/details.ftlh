<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Spider-Man Details</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand fw-bold" href="index.html">Character Gallery</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="menu">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
          <li class="nav-item"><a class="nav-link active" href="details.html">Details</a></li>
          <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
          <li class="nav-item"><a class="nav-link" href="new-character-form.html">Add a Character</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <main class="container my-5">
    <div class="card shadow-sm">
      <div class="card-body p-4">

        <h1 class="fw-bold">Spider-Man</h1>
        <p class="text-muted fs-5">Peter Parker</p>

        <div class="row g-4 mt-1">
          <div class="col-md-5">
            <img src="images/spiderman.jpg" class="img-fluid rounded border" alt="Spider-Man">
          </div>

          <div class="col-md-7">
            <h2 class="h4">Character Information</h2>
            <ul class="list-group list-group-flush">
              <li class="list-group-item"><strong>Universe:</strong> Marvel</li>
              <li class="list-group-item"><strong>First Appearance:</strong> Amazing Fantasy #15 (1962)</li>
              <li class="list-group-item"><strong>Created By:</strong> Stan Lee and Steve Ditko</li>
              <li class="list-group-item"><strong>Species:</strong> Enhanced human</li>
              <li class="list-group-item"><strong>Role:</strong> Street-level hero</li>
              <li class="list-group-item"><strong>Team:</strong> The Avengers</li>
            </ul>
          </div>
        </div>

        <h2 class="h4 mt-5">Backstory</h2>
        <p>Peter Parker was a teenager living with his aunt and uncle in Queens, New York
        when a radioactive spider bit him at a science demonstration. At first he used his
        new powers to make money instead of helping people. One night he let a thief run
        past him because stopping him was not his problem. That same thief later killed his
        uncle. The guilt from that night is the reason Peter keeps being Spider-Man.</p>

        <p>What makes him different from the rest of the Avengers is the size of his
        problems. Thor protects entire realms and Iron Man funds a worldwide operation, but
        Peter is usually dealing with a robbery, his rent, or a homework assignment,
        sometimes all on the same day.</p>

        <h2 class="h4 mt-4">Abilities</h2>
        <ul>
          <li>Super strength and durability</li>
          <li>Can stick to walls and ceilings</li>
          <li>Spider-sense that warns him about danger</li>
          <li>Web-shooters and web fluid that he built himself</li>
          <li>Very strong knowledge of science and chemistry</li>
        </ul>

        <h2 class="h4 mt-4">Personality</h2>
        <p>Spider-Man makes a lot of jokes during fights. Part of that is to distract his
        opponents and part of it is to hide how nervous he is. Outside of the mask, Peter is
        anxious, always running late, and stretched thin between school, work, and the
        people he is trying to protect.</p>

        <hr class="my-4">

        <h2 class="h5">Other Pages</h2>
        <ul>
          <li><a href="index.html">Back to the character gallery</a></li>
          <li><a href="about.html">About this website</a></li>
          <li><a href="new-character-form.html">Add a new character</a></li>
        </ul>

      </div>
    </div>
  </main>

  <footer class="bg-dark text-secondary text-center py-4">
    <p class="mb-0">Character Gallery - CSC 340 project by Goran Ali</p>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>