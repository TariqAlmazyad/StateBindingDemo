//
//  UpdateOneTask.swift
//  StateBindingDemo
//
//  Created by Tariq Almazyad on 6/10/22.
//

import SwiftUI

struct UpdateOneTask: View {
    @Binding var text: String
    var body: some View{
        TextField("Enter Text", text: $text)
            .padding()
            .background(Color.white.opacity(0.1))
            .cornerRadius(12)
            .padding()
    }
}

struct UpdateOneTask_Previews: PreviewProvider {
    static var previews: some View {
        UpdateOneTask(text: .constant(""))
            .preferredColorScheme(.dark)
    }
}
