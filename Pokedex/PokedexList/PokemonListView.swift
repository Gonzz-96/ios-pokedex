//
//  PokemonListView.swift
//  Pokedex
//
//  Created by Erick Gonzalo Campos on 07/08/22.
//

import Foundation
import UIKit

class PokemonListViewController: UIViewController, PokemonListView {
    
    var presenter: PokemonListPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
