//
//  RegisterWithEmailView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 31/05/2022.
//

import SwiftUI

struct RegisterWithEmailView: View {
    @State  private var firstName = ""
    @State  private var lastName = ""
    @State  private var email = ""
    @State private var password = ""
    var body: some View {
        VStack {
            Text("Continue with Email")
                .bold()
                .font(.largeTitle)
                .padding()
            
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("First Name")
                    TextField("", text: $firstName)
                        .textFieldStyle(.roundedBorder)
                }
                VStack(alignment: .leading) {
                    Text("Last Name")
                    TextField("", text: $lastName)
                        .textFieldStyle(.roundedBorder)
                }
            }
            VStack(alignment: .leading){
                Text("Email")
                TextField("", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .textContentType(.emailAddress)
            }
            VStack(alignment: .leading){
                Text("Password")
                Text("Min. 6 characters")
                    .font(.caption)
                SecureField("", text: $password)
                    .textFieldStyle(.roundedBorder)
                
            }
            
            Button {
                print("Login")
            } label: {
                Text("Next")
                    .foregroundColor(.white)
                    .frame(width: 360, height: 50, alignment: .center)
                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill())
            } .disabled(email.hasPrefix("@") || firstName.isEmpty || lastName.isEmpty || password.count < 6)
            Text("Already a user?")
            NavigationLink {
                RegisterWithEmailView()
            } label: {
                Text("Sign In")
                    .foregroundColor(.white)
                    .frame(width: 360, height: 50, alignment: .center)
                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color.gray))
                
            }
            Spacer()
        }
        .padding()
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

struct RegisterWithEmailView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterWithEmailView()
    }
}
