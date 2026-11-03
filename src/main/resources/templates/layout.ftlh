<#macro page title active="">
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>${title} | Marvel Superheroes Gallery</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light d-flex flex-column min-vh-100">

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand fw-bold" href="/">Marvel Superheroes Gallery</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="menu">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link <#if active == 'home'>active</#if>" href="/">Home</a></li>
          <li class="nav-item"><a class="nav-link <#if active == 'about'>active</#if>" href="/about">About</a></li>
          <li class="nav-item"><a class="nav-link <#if active == 'add'>active</#if>" href="/characters/new">Add a Character</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <main class="container my-5 flex-grow-1">
    <#if message??>
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        ${message}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
    </#if>

    <#nested>
  </main>

  <footer class="bg-dark text-secondary text-center py-4">
    <p class="mb-0">Marvel Superheroes Gallery - CSC 340 project by Goran Ali</p>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
</#macro>