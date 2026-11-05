<#import "layout.ftlh" as layout>
<#assign editing = character.characterId??>
<@layout.page title=editing?then("Edit Character", "Add a Character") active=editing?then("", "add")>

  <div class="container my-5">
    <div class="card shadow-sm">
      <div class="card-body p-4">

        <h1 class="fw-bold">${editing?then("Edit " + (character.name!''), "Add a New Character")}</h1>
        <p class="text-muted">Fill out every field below. Name and description are required.</p>

        <form method="post"
              action="${editing?then('/characters/' + character.characterId?c, '/characters')}"
              class="row g-3">

          <div class="col-md-6">
            <label for="name" class="form-label">Character Name</label>
            <input type="text" class="form-control" id="name" name="name"
                   value="${character.name!''}" placeholder="Black Panther" required>
          </div>

          <div class="col-md-6">
            <label for="realName" class="form-label">Real Name</label>
            <input type="text" class="form-control" id="realName" name="realName"
                   value="${character.realName!''}" placeholder="T'Challa">
          </div>

          <div class="col-md-6">
            <label for="universe" class="form-label">Universe</label>
            <input type="text" class="form-control" id="universe" name="universe"
                   value="${character.universe!''}" placeholder="Marvel">
          </div>

          <div class="col-md-6">
            <label for="role" class="form-label">Role</label>
            <select class="form-select" id="role" name="role">
              <#list ["Team leader", "Heavy hitter", "Street-level hero", "Inventor", "Villain"] as r>
                <option value="${r}" <#if (character.role!'') == r>selected</#if>>${r}</option>
              </#list>
            </select>
          </div>

          <div class="col-md-6">
            <label for="species" class="form-label">Species</label>
            <input type="text" class="form-control" id="species" name="species"
                   value="${character.species!''}" placeholder="Human">
          </div>

          <div class="col-md-6">
            <label for="powerLevel" class="form-label">Power Level</label>
            <select class="form-select" id="powerLevel" name="powerLevel">
              <#list ["Peak human", "High", "Very high", "Cosmic"] as p>
                <option value="${p}" <#if (character.powerLevel!'') == p>selected</#if>>${p}</option>
              </#list>
            </select>
          </div>

          <div class="col-12">
            <label for="imageUrl" class="form-label">Image URL</label>
            <input type="text" class="form-control" id="imageUrl" name="imageUrl"
                   value="${character.imageUrl!''}" placeholder="/images/example.png or https://...">
          </div>

          <div class="col-12">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description" name="description" rows="4"
                      placeholder="Two or three sentences about the character." required>${character.description!''}</textarea>
          </div>

          <div class="col-12">
            <button type="submit" class="btn btn-warning">${editing?then("Save Changes", "Add Character")}</button>
            <a href="${editing?then('/characters/' + character.characterId?c, '/')}" class="btn btn-outline-secondary">Cancel</a>
          </div>

        </form>

      </div>
    </div>
  </div>

</@layout.page>