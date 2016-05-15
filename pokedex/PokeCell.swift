//
//  PokeCell.swift
//  pokedex
//
//  Created by Bartosz Odrzywołek on 15/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // actually we don't need this initializer
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
    
}
