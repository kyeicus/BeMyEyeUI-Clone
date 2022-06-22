//
//  MainScreenView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 31/05/2022.
//

import SwiftUI

struct MainScreenView: View {
    @State private var apiShow = false
    var body: some View {
        VStack {
            Text ("Join the community. See the world together.")
                .bold()
                .font(Font.title)
                .multilineTextAlignment(.center)
                .padding()
            Image("image-main")
                .resizable()
                .frame(height: 220)
            Spacer()
            HStack {
                VStack{
                    Text(apiShow ? "405,249" : "-")
                        .bold()
                    Text("Blind")
                        .font(.caption)
                }
                Spacer()
                VStack{
                    Text(apiShow ? "5,761,181": "-")
                        .bold()
                    Text("Volunteers")
                        .font(.caption)
                }
            }
            .padding(.horizontal, 50)
            .padding()
            VStack {
                NavigationLink {
                } label: {
                    SignIn_Register(text: "I need visual assistance", caption: "Call a company or a volunteer")
                } .padding(.vertical, 10)
                
                NavigationLink{
                    RegisterView()
                } label: {
                    
                    SignIn_Register(text: "I'd like to share volunteer", caption: "Share your eyesight")
                }
            }
            .padding(.bottom, 2)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Be My Eyes")
            }
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
            .preferredColorScheme(.light)
    }
}

struct SignIn_Register: View {
    var text : String
    var caption : String
    var body: some View {
        VStack {
            Text (text)
                .bold()
                .font(Font.title)
            Text(caption)
        }
        .foregroundColor(.white)
        .frame(width: 360, height: 100, alignment: .center)
        .background(Color.blue, in: RoundedRectangle(cornerRadius: 10))
    }
}
