//
//  MainScreenView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 31/05/2022.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        NavigationView {
            
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
                        Text("405,249")
                            .bold()
                        Text("Blind")
                            .font(.caption)
                        
                    }
                    Spacer()
                    VStack{
                        Text("5,761,181")
                            .bold()
                        Text("Volunteers")
                            .font(.caption)
                    }
                }
                .padding(.horizontal, 50)
                .padding()
                
                VStack {
                    NavigationLink {
                        RegisterView()
                    } label: {
                        VStack {
                            Text ("I need visual assistance")
                                .bold()
                                .font(Font.title)
                            Text("Call a company or volunteer")
                        }
                        .foregroundColor(.white)
                        .frame(width: 360, height: 100, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous).fill())
                    } .padding(.vertical, 10)
                    
                    Button  {
                        print("help!!!")
                    } label: {
                        VStack {
                            Text ("I need visual assistance")
                                .bold()
                                .font(Font.title)
                            Text("Share your eyesight")
                        }
                        .foregroundColor(.white)
                        .frame(width: 360, height: 100, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous).fill())
                    }
                }
                .padding(.bottom, 2)
            }
            .navigationTitle("Be My Eyes")
            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    Text("Be My Eyes")
//                }
//            }
            
            
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
            .preferredColorScheme(.light)
    }
}