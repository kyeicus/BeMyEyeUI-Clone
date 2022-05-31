//
//  HomeView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 4/13/22.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        Form {
            VStack(alignment: .center) {
                VStack {
                    Image(systemName: "globe.americas.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.white)
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
                .foregroundColor(Color.white)
            }
            .background(
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 380, height: 300, alignment: .center)
                
            )
            .ignoresSafeArea(.all, edges: .all)
            Section {
                VStack(alignment: .center, spacing: 5){
                    
                    Text("Emmanuel K. Nketia")
                        .font(.headline.bold())
                    
                    Text("Member Since April 8, 2022")
                        .fontWeight(.thin)
                    HStack {
                        Button("English"){}
                            .buttonStyle(.bordered)
                        Button("+2"){}
                            .buttonStyle(.bordered)
                    }.background(.thickMaterial)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .frame(width: 300 , alignment: .center)
            Section {
                Text("You will receive a notification when someone needs your help.")
                    .frame(width: 320, height: 50, alignment: .center)
            }
            VStack {
                Button ("Learn to answer calls") {
                    print("Learn to answer calls")
                }
                .frame(width: 300, height: 20, alignment: .center)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Image("bemyeye-svg")
                    .renderingMode(.template)
                    .resizable()
                    .renderingMode(.none)
                    .frame(width: 40, height: 40)
                   
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
