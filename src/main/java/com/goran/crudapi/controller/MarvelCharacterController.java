package com.goran.crudapi.controller;

import com.goran.crudapi.entity.MarvelCharacter;
import com.goran.crudapi.service.MarvelCharacterService;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/characters")
public class MarvelCharacterController {

    private final MarvelCharacterService service;

    public MarvelCharacterController(MarvelCharacterService service) {
        this.service = service;
    }

    @GetMapping
    public List<MarvelCharacter> getCharacters(
            @RequestParam(required = false) String universe,
            @RequestParam(required = false) String name) {
        if (name != null) {
            return service.searchCharactersByName(name);
        }
        if (universe != null) {
            return service.getCharactersByUniverse(universe);
        }
        return service.getAllCharacters();
    }

    @GetMapping("/{id}")
    public MarvelCharacter getCharacterById(@PathVariable Long id) {
        return service.getCharacterById(id);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public MarvelCharacter addCharacter(@Valid @RequestBody MarvelCharacter character) {
        return service.addCharacter(character);
    }

    @PutMapping("/{id}")
    public MarvelCharacter updateCharacter(@PathVariable Long id,
                                           @Valid @RequestBody MarvelCharacter character) {
        return service.updateCharacter(id, character);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCharacter(@PathVariable Long id) {
        service.deleteCharacter(id);
    }
}