//
//  BreakfastTableViewCell.swift
//  TWIG2
//
//  Created by JL Abowd on 4/22/19.
//  Copyright © 2019 JL Abowd. All rights reserved.
//

import UIKit

class BreakfastTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var recipeTitleLabel: UILabel!
    
    func setRecipe(recipe: RecipeDetails) {
        foodImageView.image = recipe.image
        recipeTitleLabel.text = recipe.title
    }
}
