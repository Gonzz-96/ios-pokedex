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
    private var pokemons = [Pokemon]()
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self,
                       forCellReuseIdentifier: Constants.pokemonCellIdentifier)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = view.safeAreaLayoutGuide.layoutFrame
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }
    
    func updateView(with pokemons: [Pokemon]) {
        DispatchQueue.main.async {
            self.pokemons = pokemons
            self.tableView.reloadData()
        }
    }
    
    func updateView(with errorMessage: String) {
        fatalError(errorMessage)
    }
}

// MARK: - UITableViewDataSource

extension PokemonListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pokemon = pokemons[indexPath.row]
        let cell = tableView.dequeueReusableCell(
            withIdentifier: Constants.pokemonCellIdentifier,
            for: indexPath
        )
        cell.textLabel?.text = pokemon.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pokemons.count
    }
}
