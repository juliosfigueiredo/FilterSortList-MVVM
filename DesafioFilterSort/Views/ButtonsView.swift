//
//  ButtonsView.swift
//  DesafioFilterSort
//
//  Created by Julio Figueiredo on 08/05/22.
//

import SwiftUI

struct ButtonsView: View {
    
    @Binding var viewModel: ContentViewModel
    
    var body: some View {
        HStack {
            Button {
                viewModel.sortedToogle()
            } label: {
                Label(!viewModel.isSorted ? "Sorted" : "Unsorted", systemImage: "shuffle")
            }
            Spacer()
                .frame(width: 90)
            Button {
                viewModel.filteredToogle()
            } label: {
                Label(!viewModel.isFiltered ? "Filtered" : "Unfiltered", systemImage: "slider.horizontal.3")
            }
        }
    }
}
