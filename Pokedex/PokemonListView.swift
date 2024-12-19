//
//  PokemonListView.swift
//  Pokedex
//
//  Created by Pablo Gallastegui on 12/15/24.
//

import SwiftUI

struct PokemonListView: View {
    private var viewModel: PokemonListViewModelType
    
    init(viewModel: PokemonListViewModelType) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            ForEach(self.viewModel.pokemonList, id: \.id) { pokemon in
                Text(pokemon.name)
            }
        }
        .padding()
    }
}
