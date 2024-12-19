//
//  PokemonViewModelType.swift
//  Pokedex
//
//  Created by Pablo Gallastegui on 12/15/24.
//

import Foundation

protocol PokemonViewModelType {
    var pokemon: PokemonType { get }
    
    /// Display the detail of the pokemon this pokemon evolves into
    func evolve()

    /// Display the detail of the pokemon this pokemon evolved from
    func reverseEvolution()
    
    /// Go Back to the list of pokemons
    func goBack()
}
