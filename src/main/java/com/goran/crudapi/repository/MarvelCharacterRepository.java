package com.goran.crudapi.repository;

import com.goran.crudapi.entity.MarvelCharacter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MarvelCharacterRepository extends JpaRepository<MarvelCharacter, Long> {

    List<MarvelCharacter> findByUniverseIgnoreCase(String universe);

    List<MarvelCharacter> findByNameContainingIgnoreCase(String name);
}