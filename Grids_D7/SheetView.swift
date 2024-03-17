//
//  SheetView.swift
//  Grids_D7
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/17.
//

import SwiftUI

struct SheetView: View {
    
    @Binding var sheetVisible: Bool
    @Binding var selectedImage: String
    
    var body: some View {
        ZStack{
            Image(selectedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .padding()
            VStack{
                HStack{
                    Spacer()
                    
                    Button(action: {
                        sheetVisible = false
                    }, label: {
                        Image(systemName: "arrow.down.left.square.fill")
                            .padding()
                            .scaleEffect(2)
                            .foregroundColor(.brown)
                    })
                }
                Spacer()
            }
        }
    }
}

#Preview {
    SheetView(sheetVisible: Binding.constant(true), selectedImage: Binding.constant("gallery1"))
}
