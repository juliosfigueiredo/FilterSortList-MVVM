//
//  ContentView.swift
//  DesafioFilterSort
//
//  Created by Julio Figueiredo on 07/05/22.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel: ContentViewModel

    var body: some View {
        VStack {
            ListContentView(viewModel: $viewModel)
            ButtonsView(viewModel: $viewModel)
        }
        .onAppear {
            viewModel.getPersons()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}
