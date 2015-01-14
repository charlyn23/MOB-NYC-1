//
//  Animal.swift
//  Class Exercise (InClass)
//
//  Created by Charlyn Buchanan on 1/12/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import Foundation

class Animal:NSObject {
    var species: String?
    var name: String?
    func stringRepresentation() -> String {
        if let speciesString = species {
            if let nameString = name {
                return "The animal is a \(speciesString), its name is \(nameString)"
            }
        }
        return "nope"
    }
}
