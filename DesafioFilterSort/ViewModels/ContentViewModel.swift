//
//  ContentViewModel.swift
//  DesafioFilterSort
//
//  Created by Julio Figueiredo on 08/05/22.
//

import Foundation

struct ContentViewModel {
    var persons = [Person]()
    var isFiltered: Bool = false
    var isSorted: Bool = false
    
    mutating func filteredToogle() {
        self.isFiltered.toggle()
        self.isFiltered ? filterPersons() : getPersons()
    }
    
    mutating func sortedToogle() {
        self.isSorted.toggle()
        
        switch isSorted {
        case true:
            sorted()
        case false:
            getPersons()
        }
    }
    
    mutating func filterPersons() {
        let personsFilter = persons.filter { person in
            person.name.count < 6
        }
        persons = personsFilter
    }
    
    mutating func getPersons() {
        persons = listPersons()
    }
    
    mutating func sorted() {
        persons = persons.sorted()
    }

    var listPersons: () -> [Person] = {
        var persons = [Person]()
        let person1 = Person(name: "Ricardo")
        let person2 = Person(name: "José")
        let person3 = Person(name: "Julio")
        let person4 = Person(name: "Bianca")
        let person5 = Person(name: "Tereza")
        let person6 = Person(name: "Silvana")
        let person7 = Person(name: "Bob")
        
        persons.append(person1)
        persons.append(person2)
        persons.append(person3)
        persons.append(person4)
        persons.append(person5)
        persons.append(person6)
        persons.append(person7)
        return persons
    }
}
