//
//  PokemonType.swift
//  Pokedex
//
//  Created by Pablo Gallastegui on 12/14/24.
//

import Foundation

protocol PokemonType {
    /// The ID number of the Pokemon
    var id: Int { get }
    /// The name of the Pokemon
    var name: String { get }
    /// A String containing the URL of this Pokemon's image
    var imageUrl: String? { get }
    /// A Collection of Strings representing the types
    var types: [String]? { get }
    /// The ID number of the Pokemon this Pokemon can evolve into
    var evolvesTo: PokemonType? { get }
    /// The ID number of the Pokemon this Pokemon evolved from
    var evolvesFromID: PokemonType? { get }

    /// Fetch an initial list of pokemons
    /// - Returns: a collection of *PokemonType* objects with the basic data about each Pokemon
    static func fetchList() async -> [PokemonType]
    
    /// Fetch more pokemons
    /// - Returns: a collection of *PokemonType* objects with the basic data about each Pokemon
    static func fetchMore() async -> [PokemonType]
    
    /// Populate details in the current model
    func populateDetails() async
}
