//
//  PokemonInteractor.swift
//  Pokedex
//
//  Created by Erick Gonzalo Campos on 08/08/22.
//

import Foundation

protocol PokemonListInteractor {
    var view: PokemonListView? { get set }
    
    func fetchPokemonList()
}

class PokemonListInteractorImpl: PokemonListInteractor {
    
    var view: PokemonListView?
    
    func fetchPokemonList() {
        let stringUrl = "https://pokeapi.co/api/v2/pokemon"
        guard let url = URL(string: stringUrl) else { return }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let safeData = data else { return }
            do {
                let pokemons = try JSONDecoder().decode(PokemonListResult.self, from: safeData)
                self.view?.updateView(with: pokemons.results.map { Pokemon(name: $0.name.capitalized) })
            } catch {
                self.view?.updateView(with: "Some shit happened! -> \(error)")
            }
        }.resume()
    }
}

