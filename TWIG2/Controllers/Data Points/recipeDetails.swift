//
//  recipeDetails.swift
//  TWIG2
//
//  Created by JL Abowd on 4/17/19.
//  Copyright © 2019 JL Abowd. All rights reserved.
//

import Foundation
import UIKit

class Recipe {

    var recipeImage: UIImage
    var recipeTitle: String

    init(recipeImage: UIImage, recipeTitle: String) {
        self.recipeImage = recipeImage
        self.recipeTitle = recipeTitle
    }
}

struct RecipeDetails {
    
    var title: String
    var image: UIImage
    var ingredients: String
    var directions: String
    
    init(title: String, image: UIImage, ingredients: String, directions: String) {
        self.title = title
        self.image = image
        self.ingredients = ingredients
        self.directions = directions
    }
}

//let breakfastIngredientsArray: Array = ["eggs", "bacon", "cheese", "potatoes", "tortillas", "canned beans", "sausage"]

let recipe1 = RecipeDetails(title: "Lumberjack Breakfast",
                            image: #imageLiteral(resourceName: "Lumberjack Breakfast-1"),
                            ingredients: "eggs, cheese, tortillas",
                            directions: "Mix together and cook over open fire.")
let recipe2 = RecipeDetails(title: "Bean Hash",
                            image: #imageLiteral(resourceName: "beanHashImage"),
                            ingredients: "canned beans, eggs, potatoes",
                            directions: "Fry over fire.")
let recipe3 = RecipeDetails(title: "Bacon Skewers",
                            image: #imageLiteral(resourceName: "bacon_skewers"),
                            ingredients: "Bacon",
                            directions: "Wrap uncooked bacon around skewers. Grill over open fire.")

func populateRecipesArray() -> [RecipeDetails] {
    var tempArray = [RecipeDetails]()
    tempArray.append(recipe1)
    tempArray.append(recipe2)
    tempArray.append(recipe3)
    return tempArray
 }




