//
//  RegisterView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 31/05/2022.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Get started")
                    .bold()
                    .font(Font.largeTitle)
                Text("By continuing, I confirm I am at least 17 years old, and I agree to and accept the Be My Eye Terms & Privacy Policy.")
                    .multilineTextAlignment(.center)
                    .font(.caption2)
                
                NavigationLink {
                    RegisterWithEmailView()
                } label: {
                    Text("Continue with Email")
                }

                Spacer()
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
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
