package com.rs.springframework.services;

import com.rs.springframework.commands.IngredientCommand;

/**
 * created by rs 1/12/2022.
 */
public interface IngredientService {
    IngredientCommand findByRecipeIdAndIngredientId(Long recipeId,Long ingredientId);
    IngredientCommand saveIngredientCommand(IngredientCommand command);

    void deleteById(Long recipeId,Long idtoDelete);
}
