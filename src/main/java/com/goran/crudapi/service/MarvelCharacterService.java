package com.goran.crudapi.service;

import com.goran.crudapi.entity.MarvelCharacter;
import com.goran.crudapi.repository.MarvelCharacterRepository;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Service
public class MarvelCharacterService {

    private final MarvelCharacterRepository repository;

    public MarvelCharacterService(MarvelCharacterRepository repository) {
        this.repository = repository;
    }

    public List<MarvelCharacter> getAllCharacters() {
        return repository.findAll();
    }

    public MarvelCharacter getCharacterById(Long id) {
        return repository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(
                        HttpStatus.NOT_FOUND, "Character not found with id " + id));
    }

    public List<MarvelCharacter> getCharactersByUniverse(String universe) {
        return repository.findByUniverseIgnoreCase(universe);
    }

    public List<MarvelCharacter> searchCharactersByName(String name) {
        return repository.findByNameContainingIgnoreCase(name);
    }

    public MarvelCharacter addCharacter(MarvelCharacter character) {
        character.setCharacterId(null);
        return repository.save(character);
    }

    public MarvelCharacter updateCharacter(Long id, MarvelCharacter updated) {
        MarvelCharacter existing = getCharacterById(id);
        existing.setName(updated.getName());
        existing.setDescription(updated.getDescription());
        existing.setRealName(updated.getRealName());
        existing.setUniverse(updated.getUniverse());
        existing.setRole(updated.getRole());
        existing.setSpecies(updated.getSpecies());
        existing.setPowerLevel(updated.getPowerLevel());
        return repository.save(existing);
    }

    public void deleteCharacter(Long id) {
        MarvelCharacter existing = getCharacterById(id);
        repository.delete(existing);
    }
}