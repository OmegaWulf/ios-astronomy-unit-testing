//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Nikita Thomas on 1/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    
    
    func testFetchRover() {
        let expectation = self.expectation(description: "Perform search expectation")
        
        let loader = MockLoader(data: validRoverJSON, error: nil)
        let client = MarsRoverClient(loader: loader)
        
        
        
    }
    
    
    
    
    func testFetchPhotos() {
    
        
        
    }

}
