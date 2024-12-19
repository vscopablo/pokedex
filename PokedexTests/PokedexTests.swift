//
//  PokedexTests.swift
//  PokedexTests
//
//  Created by Pablo Gallastegui on 12/14/24.
//

import XCTest
@testable import Pokedex

final class PokedexTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() async throws {
        let pokemonService = PokemonService()
        let list = await pokemonService.getPokemonList()
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
