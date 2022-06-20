//
//  RegisterView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 31/05/2022.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack(alignment: .center, spacing:  10){
            Text("Get started")
                .bold()
                .font(Font.largeTitle)
                .padding()
            Text("By continuing, I confirm I am at least 17 years old, and I agree to and accept the Be My Eye Terms & Privacy Policy.")
                .multilineTextAlignment(.center)
                .font(.caption)
                .padding(.vertical, 4)
            VStack{
                NavigationLink {
                    RegisterWithEmailView()
                } label: {
                    Text("Continue with Email")
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous).fill())
                }
                Button {
                    print("Continue with apple")
                } label: {
                    Text("Continue with Apple")
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous).fill())
                }
                Button {
                    print("continue with google")
                } label: {
                    HStack {
                        Image(systemName: "person")
                        Text("Continue with Google")
                    }
                    .foregroundColor(.white)
                    .frame(width: 360, height: 50, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous).fill())
                }
                Button {
                    print("Continue with facebook")
                } label: {
                    Text("Continue with Facebook")
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous).fill())
                }
                
            }.padding()
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
