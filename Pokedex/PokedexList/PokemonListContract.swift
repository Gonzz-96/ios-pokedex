//
//  PokemonListContract.swift
//  Pokedex
//
//  Created by Erick Gonzalo Campos on 07/08/22.
//

import Foundation

protocol PokemonListView {
    var presenter: PokemonListPresenter? { get set }
    
    func updateView(with pokemons: [Pokemon])
    func updateView(with errorMessage: String)
}

protocol PokemonListPresenter {
    var view: PokemonListView? { get set }
    var interactor: PokemonListInteractor? { get set }
    
    func fetchPokemons(limit: Int)
}
