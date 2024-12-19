//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by Pablo Gallastegui on 12/15/24.
//

import Foundation

class PokemonViewModel: PokemonViewModelType {
    var pokemon: PokemonType
    
    func evolve() {
    }
    
    func reverseEvolution() {
    }
    
    func goBack() {
    }
    
    init(pokemon: PokemonType) {
        self.pokemon = pokemon
    }
}
