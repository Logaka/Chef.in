package project.chef_in.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import project.chef_in.entity.Ingredient;
import project.chef_in.repository.IngredientRepository;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class IngredientService {
    private final IngredientRepository ingredientRepository;

    public void saveIngredients(List<Ingredient> ingredients){
        ingredientRepository.saveAll(ingredients);
    }
}
