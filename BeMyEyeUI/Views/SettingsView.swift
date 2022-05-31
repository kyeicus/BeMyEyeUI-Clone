//
//  SettingsView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 4/13/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Form {
            ProfileView()
            LanguagesView()
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
                    social(img: "facebook-square-brands", socialName: "Facebook", Scolor: .indigo)
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
                    social(img: "instagram-brands", socialName: "Instagram",Scolor: .accentColor)
                }
            }
        header: {
            Text("Connect with us")
        }
            
            Section{
                HStack {
                    Text("Version")
                    Spacer()
                    Text("3.9.5 (1)")
                }
            }
            Section{
                Button(role: .destructive) {
                    
                } label: {
                    Text("Log out")
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Settings")
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
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

struct ProfileView: View {
    var body: some View {
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
    }
}

struct LanguagesView: View {
    var body: some View {
        Section {
            NavigationLink("Primarily Language") {
            }
            NavigationLink("Other Languages") {
            }
        } header: {
            Text("LANGUAGES")
        }
    }
}
