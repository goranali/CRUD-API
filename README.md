# Marvel Character API

## API Overview

The Marvel Character API is a Spring Boot REST API for the Marvel heroes from my Assignment 2 website, the Marvel Superheroes Gallery. THEY are my favorite superheros. You can add, view, update, and delete characters, filter them by universe, and search them by name.

**Base URL:**

- **Production:** https://crud-api-g9xh.onrender.com/api/characters

All requests and responses use JSON. Every character needs a `name` and a `description`.

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

## API Endpoints

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
  "powerLevel": "Peak human"
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
  "powerLevel": "High"
}
```

Change `2` to the ID of the character you want to update.

## Deployment

- **Live API on Render:** [All Marvel characters](https://crud-api-g9xh.onrender.com/api/characters)
- **GitHub Repository:** [CRUD-API](https://github.com/goranali/CRUD-API)

> **IMPORTANT:** This runs on Render's free plan, so the service sleeps when no one is using it. The first request after a break can take up to a minute to load.