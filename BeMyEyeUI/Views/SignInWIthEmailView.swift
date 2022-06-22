//
//  SignInWIthEmailView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 22/06/2022.
//

import SwiftUI

struct SignInWIthEmailView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            Text("Sign in with Email")
            VStack() {
                List {
                    Group {
                        Section(header: Text("Email").textCase(.none)
                            .padding(.leading, 0)) {
                                TextField("Email", text: $email)
                                    .textContentType(.emailAddress)
                                    .textCase(.lowercase)
                            }
                        Section(header: Text("Password").textCase(.none)) {
                            SecureField("Password", text: $password)
                        }.font(.subheadline)
                    }
                    Button {
                        
                    } label: {
                        Text("Next")
                    }.disabled(email.isEmpty || password.count < 6)
                        .foregroundColor(.secondary)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.blue, in: RoundedRectangle(cornerRadius: 10))
                }
            }
        } .toolbar{
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

struct SignInWIthEmailView_Previews: PreviewProvider {
    static var previews: some View {
        SignInWIthEmailView()
    }
}
