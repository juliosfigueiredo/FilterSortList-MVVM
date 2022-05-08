//
//  ListContentView.swift
//  DesafioFilterSort
//
//  Created by Julio Figueiredo on 08/05/22.
//

import SwiftUI

struct ListContentView: View {
    
    @Binding var viewModel: ContentViewModel
    
    var body: some View {
        List {
            ForEach($viewModel.persons, id: \.self) { $person in
                Text(person.name)
            }
        }
    }
}
