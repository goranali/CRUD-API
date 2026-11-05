package com.goran.crudapi.controller;

import com.goran.crudapi.entity.MarvelCharacter;
import com.goran.crudapi.service.MarvelCharacterService;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
@GetMapping("/characters/new")
public String newForm(Model model) {
    model.addAttribute("character", new MarvelCharacter());
    return "character-form";
}

@PostMapping("/characters")
public String create(@ModelAttribute MarvelCharacter character, RedirectAttributes ra) {
    MarvelCharacter saved = service.addCharacter(character);
    ra.addFlashAttribute("message", saved.getName() + " was added");
    return "redirect:/";
}
@GetMapping("/characters/{id}/edit")
public String editForm(@PathVariable Long id, Model model, HttpServletResponse response) {
    MarvelCharacter character = findOrNull(id);
    if (character == null) {
        return notFound(id, model, response);
    }
    model.addAttribute("character", character);
    return "character-form";
}

@PostMapping("/characters/{id}")
public String update(@PathVariable Long id, @ModelAttribute MarvelCharacter form,
                     RedirectAttributes ra, Model model, HttpServletResponse response) {
    if (findOrNull(id) == null) {
        return notFound(id, model, response);
    }
    MarvelCharacter updated = service.updateCharacter(id, form);
    ra.addFlashAttribute("message", updated.getName() + " was updated");
    return "redirect:/characters/" + id;
}

@PostMapping("/characters/{id}/delete")
public String delete(@PathVariable Long id, RedirectAttributes ra,
                     Model model, HttpServletResponse response) {
    MarvelCharacter character = findOrNull(id);
    if (character == null) {
        return notFound(id, model, response);
    }
    String name = character.getName();
    service.deleteCharacter(id);
    ra.addFlashAttribute("message", name + " was removed");
    return "redirect:/";
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