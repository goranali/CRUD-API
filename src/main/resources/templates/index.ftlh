<#import "layout.ftlh" as layout>
<@layout.page title="Home" active="home">

  <header class="bg-dark text-white py-5">
    <div class="container">
      <h1 class="display-4 fw-bold">The Avengers Roster</h1>
      <p class="lead">Marvel's most famous heroes, loaded live from the database.</p>
      <!-- search form goes here in Step 5 -->
    </div>
  </header>

  <div class="container py-5">
    <#if characters?has_content>
      <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
        <#list characters as c>
          <div class="col">
            <div class="card h-100 shadow-sm">
              <img src="${(c.imageUrl?has_content)?then(c.imageUrl, '/images/placeholder.svg')}"
                   class="card-img-top" alt="${c.name}" style="height: 300px; object-fit: cover;">
              <div class="card-body d-flex flex-column">
                <h5 class="card-title">${c.name}</h5>
                <#if c.realName?has_content>
                  <h6 class="card-subtitle mb-3 text-muted">${c.realName}</h6>
                </#if>
                <ul class="list-group list-group-flush mb-3">
                  <li class="list-group-item"><strong>Universe:</strong> ${c.universe!''}</li>
                  <li class="list-group-item"><strong>Role:</strong> ${c.role!''}</li>
                  <li class="list-group-item"><strong>Species:</strong> ${c.species!''}</li>
                  <li class="list-group-item"><strong>Power Level:</strong> ${c.powerLevel!''}</li>
                </ul>
                <a href="/characters/${c.characterId?c}" class="btn btn-warning mt-auto">View Details</a>
              </div>
            </div>
          </div>
        </#list>
      </div>
    <#else>
      <div class="text-center py-5">
        <h2 class="h4">No characters found</h2>
        <p class="text-muted">Try a different search, or add a new character.</p>
      </div>
    </#if>
  </div>

</@layout.page>