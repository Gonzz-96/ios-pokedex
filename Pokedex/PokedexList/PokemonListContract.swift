//
//  PokemonListContract.swift
//  Pokedex
//
//  Created by Erick Gonzalo Campos on 07/08/22.
//

import Foundation

protocol PokemonListView {
    var presenter: PokemonListPresenter? { get set }
}

protocol PokemonListPresenter {
    var view: PokemonListView? { get set }
    
    func doSomeShit() // TODO remove
}
