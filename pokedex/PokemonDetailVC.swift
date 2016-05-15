//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Bartosz Odrzywołek on 16/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name
        
    }

}
