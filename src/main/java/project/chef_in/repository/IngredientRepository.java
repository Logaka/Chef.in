package project.chef_in.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import project.chef_in.entity.Ingredient;

public interface IngredientRepository extends JpaRepository<Ingredient, Integer> {
}
