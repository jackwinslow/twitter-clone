//
//  LoginView.swift
//  TwitterClone
//
//  Created by Jack Winslow on 11/17/22.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        
        // Parent container
        VStack {
            
            AuthHeaderView(title1: "Hello.", title2: "Welcome Back.")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputField(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack {
                Spacer()
                
                NavigationLink {
                    Text("Reset Password view..")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top)
                .padding(.trailing, 24)

            }
            
            Button {
                print("Sign in here")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width:340, height: 50)
            }
            .background(Color(.systemBlue))
            .clipShape(Capsule())
            .shadow(color: .gray.opacity(0.5), radius: 10)
            .padding()
            
            Spacer()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack {
                    Text("Don't have an account?")
                        .font(.footnote)
                    
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))

        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
