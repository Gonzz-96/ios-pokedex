//
//  PokemonDTO.swift
//  Pokedex
//
//  Created by Erick Gonzalo Campos on 08/08/22.
//

import Foundation

struct PokemonListResult: Decodable {
    let results: [PokemonDto]
}

struct PokemonDto: Decodable {
    let name: String
}
