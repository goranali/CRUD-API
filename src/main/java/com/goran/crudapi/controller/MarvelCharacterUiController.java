package com.goran.crudapi.controller;

import com.goran.crudapi.entity.MarvelCharacter;
import com.goran.crudapi.service.MarvelCharacterService;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;

@Controller
public class MarvelCharacterUiController {

    private final MarvelCharacterService service;

    public MarvelCharacterUiController(MarvelCharacterService service) {
        this.service = service;
    }

@GetMapping("/")
public String gallery(@RequestParam(required = false) String name,
                      @RequestParam(required = false) String role,
                      Model model) {
    model.addAttribute("characters", service.searchCharacters(name, role));
    model.addAttribute("name", name);
    model.addAttribute("role", role);
    return "index";
}

    @GetMapping("/characters/{id}")
    public String details(@PathVariable Long id, Model model, HttpServletResponse response) {
        MarvelCharacter character = findOrNull(id);
        if (character == null) {
            return notFound(id, model, response);
        }
        model.addAttribute("character", character);
        return "details";
    }

    // Your service throws an exception when an id doesn't exist.
    // This turns that into null so we can show the friendly error page instead.
    private MarvelCharacter findOrNull(Long id) {
        try {
            return service.getCharacterById(id);
        } catch (ResponseStatusException e) {
            return null;
        }
    }

    private String notFound(Long id, Model model, HttpServletResponse response) {
        response.setStatus(404);
        model.addAttribute("id", id);
        return "error";
    }
}