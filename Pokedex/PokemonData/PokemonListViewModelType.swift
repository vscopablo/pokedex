//
//  PokemonListViewModelType.swift
//  Pokedex
//
//  Created by Pablo Gallastegui on 12/15/24.
//

import Foundation

protocol PokemonListViewModelType {
    var pokemonList: [PokemonType] { get }
    
    /// Show the details of the selected Pokemon
    /// - Parameter pokemon: the *PokemonType* object representing the user selection
    func showDetails(pokemon: PokemonType) async
    
    /// Load more Pokemons in the list
    func loadMore() async
}
