<#import "layout.ftlh" as layout>
<@layout.page title="About" active="about">

  <div class="container my-5">
    <div class="card shadow-sm">
      <div class="card-body p-4">

        <h1 class="fw-bold">About This Website</h1>

        <img src="/images/comics.png" class="img-fluid rounded border my-3" alt="Comic books" style="max-width: 300px;">

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
        <p>This site started as a static HTML and Bootstrap page. Now it has a real
backend, so the search bar filters characters from the database and the form
adds, edits, and removes characters actually.</p>

        <h2 class="h4 mt-4">About Me</h2>
        <p>I am a Computer Science major with a Business minor at UNC Greensboro. Most of
        my time outside of class goes into a lot of things, like hanging out with friends, going to the gym,
        playing the piano, learning more about CS.</p>

        <hr class="my-4">

        <h2 class="h5">Other Pages</h2>
        <ul>
<li><a href="/">See all characters</a></li>
<li><a href="/characters/new">Add a new character</a></li>
        </ul>

      </div>
    </div>
</div>
<div class="container pb-5">
  <div class="card shadow-sm">
    <div class="card-body p-4">
      <h2 class="h4 fw-bold">How This App Is Built</h2>
      <p>This app is a Spring Boot application with three layers. The
      <strong>repository</strong> talks to a PostgreSQL database hosted on Neon. The
      <strong>service</strong> layer holds the business logic, like searching,
      adding, and updating characters.</p>
      <p>Two controllers sit on top of the same service. A <strong>REST
      controller</strong> serves JSON at <code>/api/characters</code>, and a
      <strong>page controller</strong> passes data to FreeMarker templates, which
      build the HTML pages you see.. Both front ends share one back end and one
      database.</p>
    </div>
  </div>
</div>
  </@layout.page>