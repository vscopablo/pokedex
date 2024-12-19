//
//  PokemonListViewModel.swift
//  Pokedex
//
//  Created by Pablo Gallastegui on 12/15/24.
//

import Foundation
import PokemonAPI

class PokemonListViewModel: PokemonListViewModelType {
    
    var pokemonList: [PokemonType] = []
    
    func showDetails(pokemon: PokemonType) async {
        await pokemon.populateDetails()
    }

    func loadMore() async {
        // Need to figure out this, cannot do it on a protocol!
        // Error: Static member 'fetchList' cannot be used on protocol metatype
//        self.pokemonList = PokemonType.fetchMore
    }
    
    init() {
        // Need to figure out this, cannot do it on a protocol!
        // Error: Static member 'fetchList' cannot be used on protocol metatype
//        self.pokemonList = PokemonType.fetchList()
    }
}
