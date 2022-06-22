//
//  BeMyEyeUIApp.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 4/12/22.
//

import SwiftUI
//import FirebaseCore

@main
struct BeMyEyeUIApp: App {
//    class AppDelegate: NSObject, UIApplicationDelegate {
//        func application(_ application: UIApplication,
//                         didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//            FirebaseApp.configure()
//            return true
//        }
//    }
    
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationView{
                MainScreenView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
