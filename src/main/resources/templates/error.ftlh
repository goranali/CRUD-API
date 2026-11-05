<#import "layout.ftlh" as layout>
<@layout.page title="Not Found">

  <div class="container py-5 text-center">
    <h1 class="display-5 fw-bold">Character not found</h1>
    <p class="lead text-muted">
      We couldn't find a character<#if id??> with ID ${id?c}</#if>. It may have been removed.
    </p>
    <a href="/" class="btn btn-warning mt-3">Back to the gallery</a>
  </div>

</@layout.page>