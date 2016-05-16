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
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var baseAttackLbl: UILabel!
    
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name.capitalizedString
        mainImg.image = UIImage(named: "\(pokemon.pokedexId)")
        
        pokemon.downloadPokemonDetails { () -> () in
            //this will be called after the download is done
            
            
        }
        
    }
    

    @IBAction func musicBtnPressed(sender: AnyObject) {
        
    }
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
