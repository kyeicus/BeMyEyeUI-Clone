//
//  SettingsView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 4/13/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        VStack {
            Form {
                Section {
                    NavigationLink("Profile Details") {
                    }
                    NavigationLink("Change Email") {
                    }
                    NavigationLink("Password") {
                    }
                } header: {
                    Text("PROFILE")
                }
                Section {
                    NavigationLink("Primarily Language") {
                    }
                    NavigationLink("Other Languages") {
                    }
                } header: {
                    Text("LANGUAGES")
                }
                Section {
                    NavigationLink {
                        
                    } label: {
                        SettingsList(listImage: "bell.circle.fill", listText: "Notifications", listColor: .red)
                    }
                }
                Section {
                    NavigationLink {
                    } label: {
                        
                        SettingsList(listImage: "envelope.circle.fill", listText: "Send us Feedback", listColor: .blue)
                        
                    }
                    NavigationLink{
                        
                    } label: {
                        HStack{
                            Image(systemName: "questionmark.circle.fill")
                                .foregroundColor(.blue)
                                .font(Font.system(size: 30))
                            Text("FAQ")
                        }
                    }
                    NavigationLink {
                        
                    } label: {
                        
                        HStack{
                            Image(systemName: "checkmark.shield.fill")
                            //                                .clipShape(Circle)
                                .foregroundColor(.blue)
                                .font(Font.system(size: 30))
                            
                            Text("Terms $ Privacy Policy")
                        }
                    }
                    
                }
                Section{
                    NavigationLink {
                        
                    } label: {
                        HStack {
                            Image(systemName: "square.and.arrow.up.circle.fill")
                                .foregroundColor(.blue)
                                .font(Font.system(size: 30))
                            Text("Rate Be My Eyes")
                            
                        }
                    }
                    NavigationLink {
                        
                    } label: {
                        HStack {
                            Image(systemName: "star.circle")
                                .foregroundColor(.blue)
                                .font(Font.system(size: 30))
                            Text("Share Be My Eyes")
                            
                        }
                    }
                }
                
                Section  {
                    NavigationLink {
                        
                    } label: {
                        social(img: "facebook-square-brands", socialName: "Facebook", Scolor: .blue)
                    }
                    NavigationLink {
                    } label: {
                        social(img: "twitter-square-brands", socialName: "Twitter", Scolor: .blue)
                    }
                    NavigationLink {
                    } label: {
                        social(img: "youtube-brands", socialName: "YouTube", Scolor: .red)
                    }
                    NavigationLink {
                    } label: {
                        social(img: "instagram-brands", socialName: "Instagram",Scolor: .blue)
                    }
                }
            header: {
                    Text("Connect with us")
                }
                
            }
            
        }
        .navigationTitle("Settings")
        
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct social: View {
    
    var img: String
    var socialName: String
    var Scolor: Color
    
    
    var body: some View {
        HStack ( spacing: 15) {
            Image(img)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(Scolor)
            Text(socialName)
        }
    }
}

struct SettingsList: View {
    var listImage: String
    var listText : String
    var listColor : Color
    
    
    var body: some View {
        HStack{
            Image(systemName: listImage)
                .foregroundColor(listColor)
                .font(Font.system(size: 30))
            
            Text(listText)
                .font(Font.body)
        }
    }
}
