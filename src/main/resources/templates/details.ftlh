<#import "layout.ftlh" as layout>
<@layout.page title=character.name>

  <div class="container py-5">
    <div class="card shadow-sm">
      <div class="row g-0">
        <div class="col-md-5">
          <img src="${(character.imageUrl?has_content)?then(character.imageUrl, '/images/placeholder.svg')}"
               class="img-fluid rounded-start w-100 h-100" alt="${character.name}" style="object-fit: cover;">
        </div>
        <div class="col-md-7">
          <div class="card-body p-4">
            <h1 class="fw-bold">${character.name}</h1>
            <#if character.realName?has_content>
              <h2 class="h5 text-muted mb-4">${character.realName}</h2>
            </#if>

            <ul class="list-group list-group-flush mb-4">
              <li class="list-group-item"><strong>Universe:</strong> ${character.universe!''}</li>
              <li class="list-group-item"><strong>Role:</strong> ${character.role!''}</li>
              <li class="list-group-item"><strong>Species:</strong> ${character.species!''}</li>
              <li class="list-group-item"><strong>Power Level:</strong> ${character.powerLevel!''}</li>
            </ul>

            <h3 class="h5">About ${character.name}</h3>
            <p>${character.description!''}</p>

            <div class="d-flex gap-2 mt-4">
              <a href="/characters/${character.characterId?c}/edit" class="btn btn-warning">Edit</a>
              <form method="post" action="/characters/${character.characterId?c}/delete"
      onsubmit="return confirm('Are you sure you want to remove ${character.name?js_string}?');">
  <button type="submit" class="btn btn-outline-danger">Delete</button>
</form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <a href="/" class="btn btn-outline-secondary mt-4">← Back to the gallery</a>
  </div>

</@layout.page>