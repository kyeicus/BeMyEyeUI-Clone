//
//  CommunityView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 4/15/22.
//

import SwiftUI

struct CommunityView: View {
    
    @State private var isLoading = false
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            Text("")
            
            if isLoading{
                LoadingView()
            }
        }
        .onAppear { startNetworCall() }
    }
    func startNetworCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            isLoading = false
        }
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .scaleEffect()
        }
    }
}
