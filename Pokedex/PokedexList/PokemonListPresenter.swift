//
//  PokemonListPresenter.swift
//  Pokedex
//
//  Created by Erick Gonzalo Campos on 07/08/22.
//

import Foundation

class PokemonListPresenterImpl: PokemonListPresenter {
    var view: PokemonListView?
    var interactor: PokemonListInteractor?
    
    func fetchPokemons(limit: Int) {
        interactor?.fetchPokemonList()
    }
}

let dummyPokemons = [
    Pokemon(name: "Pikachu"),
    Pokemon(name: "Bulbasaur"),
    Pokemon(name: "Charmander"),
    Pokemon(name: "Squirtel"),
]
