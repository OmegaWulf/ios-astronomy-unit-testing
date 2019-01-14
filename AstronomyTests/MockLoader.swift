//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Nikita Thomas on 1/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    
    let data: Data?
    let error: Error?
    
    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }

    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }

    
}
