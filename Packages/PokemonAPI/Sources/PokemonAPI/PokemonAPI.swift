public class PokemonAPI {
    
    /// Returns a list of Pokemons based on the pagination state. Throws a PokemonListEmptyError if there are no Pokemon found in the page specified
    /// - Parameter paginationState: an optional *PaginationState* enum value, containing the pagination. Defaults to initial, meaning the first page
    /// - Returns: A collection of *Pokemon* objects without their details
    public static func fetchPokemonList(paginationState: PaginationState = .initial) async throws -> [Pokemon] {
        var pokemonList: [Pokemon]
        switch paginationState {
        case .initial:
            pokemonList = Self.getPokemonList(startingPageNumber: 0)
        case .page(pageNumber: let pageNumber):
            pokemonList = Self.getPokemonList(startingPageNumber: pageNumber - 1)
        }
        
        guard pokemonList.count > 0 else {
            throw PokemonListEmptyError()
        }
        
        return pokemonList
    }
    
    /// Returns a Pokemon object with all the details available populated. Throws  PokemonNotFoundError if no Pokemon can be found with that ID
    /// - Parameter pokemonID: an *Int* with the Pokemon ID
    /// - Returns: a *Pokemon* object with all the details available populated
    public static func fetchPokemonDetails(pokemonID: Int) async throws -> Pokemon {
        guard let pokemon = self.getPokemon(pokemonID: pokemonID, withDetails: true) else {
            throw PokemonNotFoundError()
        }
        return pokemon
    }
    
    private static func getPokemonList(startingPageNumber: Int) -> [Pokemon] {
        var pokemonList = [Pokemon]()
        let startingIndex = startingPageNumber * 5
        for i in startingIndex ... startingIndex + 5 {
            guard let pokemon = Self.getPokemon(pokemonID: i, withDetails: false) else {
                continue
            }
            pokemonList.append(pokemon)
        }
        return pokemonList
    }
    
    private static func getPokemon(pokemonID: Int, withDetails: Bool) -> Pokemon? {
        switch pokemonID {
        case 1:
            let pokemon = Pokemon(id: pokemonID, name: "Bulbasaur")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/001.png"
                pokemon.types = ["Grass", "Poison"]
                pokemon.evolvesToID = 2
            }
            return pokemon
        case 2:
            let pokemon = Pokemon(id: pokemonID, name: "Ivysaur")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/002.png"
                pokemon.types = ["Grass", "Poison"]
                pokemon.evolvesToID = 3
                pokemon.evolvesFromID = 1
            }
            return pokemon
        case 3:
            let pokemon = Pokemon(id: pokemonID, name: "Venusaur")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/003.png"
                pokemon.types = ["Grass", "Poison"]
                pokemon.evolvesFromID = 2
            }
            return pokemon
        case 4:
            let pokemon = Pokemon(id: pokemonID, name: "Charmander")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/004.png"
                pokemon.types = ["Fire"]
                pokemon.evolvesToID = 5
            }
            return pokemon
        case 5:
            let pokemon = Pokemon(id: pokemonID, name: "Charmeleon")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/005.png"
                pokemon.types = ["Fire"]
                pokemon.evolvesToID = 6
                pokemon.evolvesFromID = 4
            }
            return pokemon
        case 6:
            let pokemon = Pokemon(id: pokemonID, name: "Charizard")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/006.png"
                pokemon.types = ["Fire", "Flying"]
                pokemon.evolvesFromID = 5
            }
            return pokemon
        case 7:
            let pokemon = Pokemon(id: pokemonID, name: "Squirtle")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/007.png"
                pokemon.types = ["Water"]
                pokemon.evolvesToID = 8
            }
            return pokemon
        case 8:
            let pokemon = Pokemon(id: pokemonID, name: "Wartortle")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/008.png"
                pokemon.types = ["Water"]
                pokemon.evolvesToID = 9
                pokemon.evolvesFromID = 7
            }
            return pokemon
        case 9:
            let pokemon = Pokemon(id: pokemonID, name: "Blastoise")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/009.png"
                pokemon.types = ["Water"]
                pokemon.evolvesFromID = 8
            }
            return pokemon
        case 10:
            let pokemon = Pokemon(id: pokemonID, name: "Caterpie")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/010.png"
                pokemon.types = ["Bug"]
                pokemon.evolvesToID = 11
            }
            return pokemon
        case 11:
            let pokemon = Pokemon(id: pokemonID, name: "Metapod")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/011.png"
                pokemon.types = ["Bug"]
                pokemon.evolvesToID = 12
                pokemon.evolvesFromID = 10
            }
            return pokemon
        case 12:
            let pokemon = Pokemon(id: pokemonID, name: "Butterfree")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/012.png"
                pokemon.types = ["Bug", "Flying"]
                pokemon.evolvesFromID = 11
            }
            return pokemon
        case 13:
            let pokemon = Pokemon(id: pokemonID, name: "Weedle")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/013.png"
                pokemon.types = ["Bug", "Poison"]
                pokemon.evolvesToID = 14
            }
            return pokemon
        case 14:
            let pokemon = Pokemon(id: pokemonID, name: "Kakuna")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/014.png"
                pokemon.types = ["Bug", "Poison"]
                pokemon.evolvesToID = 15
                pokemon.evolvesFromID = 13
            }
            return pokemon
        case 15:
            let pokemon = Pokemon(id: pokemonID, name: "Beedrill")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/015.png"
                pokemon.types = ["Bug", "Poison"]
                pokemon.evolvesFromID = 14
            }
            return pokemon
        case 16:
            let pokemon = Pokemon(id: pokemonID, name: "Pidgey")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/016.png"
                pokemon.types = ["Normal", "Flying"]
                pokemon.evolvesToID = 17
            }
            return pokemon
        case 17:
            let pokemon = Pokemon(id: pokemonID, name: "Pidgeotto")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/017.png"
                pokemon.types = ["Normal", "Flying"]
                pokemon.evolvesToID = 18
                pokemon.evolvesFromID = 16
            }
            return pokemon
        case 18:
            let pokemon = Pokemon(id: pokemonID, name: "Pidgeot")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/018.png"
                pokemon.types = ["Normal", "Flying"]
                pokemon.evolvesFromID = 17
            }
            return pokemon
        case 19:
            let pokemon = Pokemon(id: pokemonID, name: "Rattata")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/019.png"
                pokemon.types = ["Normal"]
                pokemon.evolvesToID = 20
            }
            return pokemon
        case 20:
            let pokemon = Pokemon(id: pokemonID, name: "Raticate")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/020.png"
                pokemon.types = ["Normal"]
                pokemon.evolvesFromID = 19
            }
            return pokemon
        case 21:
            let pokemon = Pokemon(id: pokemonID, name: "Spearow")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/021.png"
                pokemon.types = ["Normal", "Flying"]
                pokemon.evolvesToID = 22
            }
            return pokemon
        case 22:
            let pokemon = Pokemon(id: pokemonID, name: "Fearow")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/022.png"
                pokemon.types = ["Normal", "Flying"]
                pokemon.evolvesFromID = 21
            }
            return pokemon
        case 23:
            let pokemon = Pokemon(id: pokemonID, name: "Ekans")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/023.png"
                pokemon.types = ["Poison"]
                pokemon.evolvesToID = 24
            }
            return pokemon
        case 24:
            let pokemon = Pokemon(id: pokemonID, name: "Arbok")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/024.png"
                pokemon.types = ["Poison"]
                pokemon.evolvesFromID = 23
            }
            return pokemon
        case 25:
            let pokemon = Pokemon(id: pokemonID, name: "Pikachu")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/025.png"
                pokemon.types = ["Electric"]
                pokemon.evolvesToID = 26
                pokemon.evolvesFromID = 172
            }
            return pokemon
        case 26:
            let pokemon = Pokemon(id: pokemonID, name: "Raichu")
            if (withDetails) {
                pokemon.imageUrl = "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/026.png"
                pokemon.types = ["Electric"]
                pokemon.evolvesFromID = 25
            }
            return pokemon
        default:
            return nil
        }
    }
}

/// Pagination state for handling requests to retrieve specific pages of pokemons
public enum PaginationState {
    case initial
    case page(pageNumber: Int)
}

/// A data model class holding the properties of a Pokemon
public class Pokemon {
    /// The ID number of the Pokemon
    public var id: Int
    /// The name of the Pokemon
    public var name: String
    /// A String containing the URL of this Pokemon's image
    public var imageUrl: String?
    /// A Collection of Strings representing the types
    public var types: [String]?
    /// The ID number of the Pokemon this Pokemon can evolve into
    public var evolvesToID: Int?
    /// The ID number of the Pokemon this Pokemon evolved from
    public var evolvesFromID: Int?
    
    /// Initializer with the required properties
    /// - Parameters:
    ///   - id: an *Int* with the ID number of the Pokemon
    ///   - name: a *String* with the Pokemon name
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

public class PokemonNotFoundError: Error {
}

public class PokemonListEmptyError: Error {
}
