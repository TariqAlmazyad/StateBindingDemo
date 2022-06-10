//
//  ContentView.swift
//  StateBindingDemo
//
//  Created by Tariq Almazyad on 6/10/22.
//
import SwiftUI
struct ContentView: View {
    @State var singeView: String = ""
    @State var arrayViews: [String] = ["HStack", "VStack", "HStack"]
    var body: some View {
        NavigationView{
            Form {
                Section{
                    NavigationLink {
                        UpdateOneTask(text: $singeView)
                    } label: {
                        Text(singeView)
                    }
                }

                Section{
                    ForEach($arrayViews, id:\.self) { $arrayView in
                        NavigationLink {
                            UpdateOneTask(text: $arrayView)
                        } label: {
                            Text(arrayView)
                        }
                    }
                }
            }.navigationTitle("@State @Binding")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
