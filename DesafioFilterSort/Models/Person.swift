//
//  Person.swift
//  DesafioFilterSort
//
//  Created by Julio Figueiredo on 08/05/22.
//

import Foundation

struct Person: Hashable, Comparable {
    var name: String
    
    static func <(lhs: Person, rhs: Person) -> Bool {
        return lhs.name < rhs.name
    }
}
