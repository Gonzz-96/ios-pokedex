//
//  PokemonListRouter.swift
//  Pokedex
//
//  Created by Erick Gonzalo Campos on 07/08/22.
//

import Foundation

protocol PokemonListRouter {
    
    var view: PokemonListView? { get }
    
    static func start() -> PokemonListRouter
}

class PokemonListRouterImpl: PokemonListRouter {
    
    var view: PokemonListView?
    
    static func start() -> PokemonListRouter {
        let router = PokemonListRouterImpl()
        var presenter: PokemonListPresenter = PokemonListPresenterImpl()
        var view: PokemonListView = PokemonListViewController()
        var interactor: PokemonListInteractor = PokemonListInteractorImpl()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        router.view = view
        interactor.view = view
        
        presenter.fetchPokemons(limit: 20)
        
        return router
    }
}
