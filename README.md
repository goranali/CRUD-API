# Marvel Superheroes Gallery

## Overview

The Marvel Superheroes Gallery is a Spring Boot app for the Marvel heroes from my Assignment 2 website. THEY are my favorite superheros. It has two front ends that share one back end and one database:

- **Web pages** built with FreeMarker templates, where you can browse, search, add, edit, and delete characters
- **A REST API** that returns JSON at `/api/characters`

**Live Site:** https://crud-api-g9xh.onrender.com

**API Base URL:** https://crud-api-g9xh.onrender.com/api/characters

> **IMPORTANT:** This runs on Render's free plan, so the service sleeps when no one is using it. The first request after a break can take up to a minute to load.

## Pages

| Route | Description |
| ----- | ----------- |
| `GET /` | Gallery of all characters, with search by name and filter by role |
| `GET /characters/{id}` | Details page for one character |
| `GET /characters/new` | Form to add a new character |
| `POST /characters` | Saves a new character, then returns to the gallery with a success message |
| `GET /characters/{id}/edit` | Edit form, pre-filled with the character's current values |
| `POST /characters/{id}` | Saves the edits, then shows the details page with a success message |
| `POST /characters/{id}/delete` | Removes the character, then returns to the gallery with a success message |
| `GET /about` | About page, including how the app is built |

An ID that doesn't exist shows a friendly "Character not found" page.

## Entity Attributes

Characters are saved in the `characters` table in a Neon PostgreSQL database.

| Attribute     | Type     | Rules                                         |
| ------------- | -------- | --------------------------------------------- |
| `characterId` | `Long`   | Generated automatically by the database       |
| `name`        | `String` | Required; can't be null or blank              |
| `description` | `String` | Required; can't be null or blank              |
| `realName`    | `String` | Optional; the hero's real identity            |
| `universe`    | `String` | Optional; used by the filter endpoint         |
| `role`        | `String` | Optional; what the hero does on the team      |
| `species`     | `String` | Optional; human, Asgardian, etc.              |
| `powerLevel`  | `String` | Optional; how strong the hero is              |
| `imageUrl`    | `String` | Optional; a local path like `/images/thor.png` or a web link. A placeholder shows if it's empty |

## API Endpoints

All API requests and responses use JSON. Every character needs a `name` and a `description`.

| Method   | Path                              | Purpose                                         | Success Status   |
| -------- | --------------------------------- | ----------------------------------------------- | ---------------- |
| `GET`    | `/api/characters`                 | Get every character                             | `200 OK`         |
| `GET`    | `/api/characters/{id}`            | Get one character by its ID                     | `200 OK`         |
| `POST`   | `/api/characters`                 | Add a new character                             | `201 Created`    |
| `PUT`    | `/api/characters/{id}`            | Update an existing character                    | `200 OK`         |
| `DELETE` | `/api/characters/{id}`            | Remove a character                              | `204 No Content` |
| `GET`    | `/api/characters?universe=Marvel` | Filter by universe (not case-sensitive)         | `200 OK`         |
| `GET`    | `/api/characters?name=man`        | Search by part of a name (not case-sensitive)   | `200 OK`         |

**Errors:** asking for an ID that doesn't exist returns `404 Not Found`. A POST or PUT without a `name` or `description` returns `400 Bad Request`.

## Example: Add a Character

```
POST /api/characters
Content-Type: application/json
```

```json
{
  "name": "Black Widow",
  "description": "A former spy trained in the Red Room. She is an expert in combat, espionage, and strategy.",
  "realName": "Natasha Romanoff",
  "universe": "Marvel",
  "role": "Spy",
  "species": "Human",
  "powerLevel": "Peak human",
  "imageUrl": "/images/placeholder.svg"
}
```

Don't include `characterId`, since the database assigns it.

## Example: Update a Character

```
PUT /api/characters/2
Content-Type: application/json
```

```json
{
  "name": "Iron Man",
  "description": "A billionaire inventor who built a powered suit of armor and helped found the Avengers.",
  "realName": "Tony Stark",
  "universe": "Marvel",
  "role": "Inventor",
  "species": "Human",
  "powerLevel": "High",
  "imageUrl": "/images/ironman.png"
}
```

Change `2` to the ID of the character you want to update.

## Deployment

- **Live Site:** [Marvel Superheroes Gallery](https://crud-api-g9xh.onrender.com)
- **Live API:** [All Marvel characters](https://crud-api-g9xh.onrender.com/api/characters)
- **GitHub Repository:** [CRUD-API](https://github.com/goranali/CRUD-API)