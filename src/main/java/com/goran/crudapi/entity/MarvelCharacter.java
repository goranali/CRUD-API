package com.goran.crudapi.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name = "characters")
public class MarvelCharacter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId;

    @NotBlank(message = "Name is required")
    @Column(nullable = false)
    private String name;

    @NotBlank(message = "Description is required")
    @Column(nullable = false, length = 1000)
    private String description;

    private String realName;
    private String universe;
    private String role;
    private String species;
    private String powerLevel;

    public MarvelCharacter() {
    }

    public MarvelCharacter(String name, String description, String realName,
                           String universe, String role, String species, String powerLevel) {
        this.name = name;
        this.description = description;
        this.realName = realName;
        this.universe = universe;
        this.role = role;
        this.species = species;
        this.powerLevel = powerLevel;
    }

    public Long getCharacterId() { return characterId; }
    public void setCharacterId(Long characterId) { this.characterId = characterId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getRealName() { return realName; }
    public void setRealName(String realName) { this.realName = realName; }

    public String getUniverse() { return universe; }
    public void setUniverse(String universe) { this.universe = universe; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    public String getSpecies() { return species; }
    public void setSpecies(String species) { this.species = species; }

    public String getPowerLevel() { return powerLevel; }
    public void setPowerLevel(String powerLevel) { this.powerLevel = powerLevel; }
}