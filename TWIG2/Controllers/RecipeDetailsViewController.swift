//
//  RecipeDetailsViewController.swift
//  TWIG2
//
//  Created by JL Abowd on 4/22/19.
//  Copyright © 2019 JL Abowd. All rights reserved.
//

import UIKit

class RecipeDetailsViewController: UIViewController {

    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var directionsLabel: UILabel!
    
    var recipeDetails: RecipeDetails?
    let recipes = populateRecipesArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showRecipeDetails()
    }
    
    func showRecipeDetails() {
        foodImageView.image = selectedRecipe.image
        ingredientsLabel.text = selectedRecipe.ingredients
        directionsLabel.text = selectedRecipe.directions
    }
}
