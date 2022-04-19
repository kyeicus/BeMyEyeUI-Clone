//
//  HomeView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 4/13/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Form {
                VStack {
                    VStack {
                        Image(systemName: "globe.americas.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.blue)
                            .clipped()
                        
                    }.frame( height: 200)
                    HStack (alignment: .bottom){
                        VStack {
                            Text("393,605")
                            Text("Blind")
                        }
                        Spacer()
                        Divider()
                            .frame( height: 30)
                        Spacer()
                        VStack {
                            Text("5,687,160")
                            Text("Volunters")
                        }
                    }
                }.ignoresSafeArea(.all, edges: .all)
                Section{
                    VStack(alignment: .center, spacing: 5){
                        
                        Text("Emmanuel K. Nketia")
                            .font(.headline.bold())
                        
                        Text("Member Since April 8, 2022")
                        HStack {
                            Button("English"){}
                                .buttonStyle(.bordered)
                            Button("+2"){}
                                .buttonStyle(.bordered)
                        }.background(.thickMaterial)
                            .foregroundColor(.secondary)
                    }
                }
                .frame(width: 300 , alignment: .center)
                Section{
                    Text("You will receive a notification when someone needs your help.")
                }
                
                VStack(alignment: .center, spacing: 10) {
                    Button {
                        print("Learn")
                    } label: {
                        Text("Learn to answer calls")
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
