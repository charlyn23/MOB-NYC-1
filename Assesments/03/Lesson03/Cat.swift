//
//  Cat.swift
//  Lesson03
//
//  Created by Charlyn Buchanan on 1/24/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class Cat: Animal {
    

    
    override func prettyAnimalName() -> String {
        return "Cat name: " + self.name
    }
}