//
//  ListViewController.swift
//  TWIG2
//
//  Created by JL Abowd on 4/22/19.
//  Copyright © 2019 JL Abowd. All rights reserved.
//

import UIKit

let recipes = populateRecipesArray()
var selectedRecipe = recipes[0]

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
   
   // var recipes: [Recipe] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Breakfast Recipes"
        navigationController?.navigationBar.prefersLargeTitles = true

       //recipes = RecipeDetails.showRecipeDetailsArray
      //recipes = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "recipeDetailsSegue" {
            let destVC = segue.destination as! RecipeDetailsViewController
            destVC.recipeDetails = sender as? RecipeDetails
        }
    }
    
    func createArray() -> [Recipe] {
        var tempRecipe: [Recipe] = []

        let recipe1 = Recipe(recipeImage: #imageLiteral(resourceName: "Lumberjack Breakfast"), recipeTitle: "Lumberjack Breakfast")
        let recipe2 = Recipe(recipeImage: #imageLiteral(resourceName: "beanHashImage"), recipeTitle: "Bean Hash")
        let recipe3 = Recipe(recipeImage: #imageLiteral(resourceName: "baconSkewers"), recipeTitle: "Bacon Skewers")

        tempRecipe.append(recipe1)
        tempRecipe.append(recipe2)
        tempRecipe.append(recipe3)

        return tempRecipe
    }
}

extension ListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let recipe = recipes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "BreakfastCell") as! BreakfastTableViewCell
        
        cell.setRecipe(recipe: recipe)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       selectedRecipe = recipes[indexPath.row]
       performSegue(withIdentifier: "recipeDetailsSegue", sender: self)
    }
}
