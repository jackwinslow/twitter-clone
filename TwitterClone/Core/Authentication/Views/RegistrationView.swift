//
//  RegistrationView.swift
//  TwitterClone
//
//  Created by Jack Winslow on 11/17/22.
//

import SwiftUI

struct RegistrationView: View {
    @Environment(\.dismiss) var dismissPresentationMode
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    var body: some View {
        
        VStack {
            AuthHeaderView(title1: "Get started.", title2: "Create your account.")
            
            VStack(spacing: 40)  {
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputField(imageName: "person", placeholderText: "Username", text: $username)
                
                CustomInputField(imageName: "person", placeholderText: "Full Name", text: $fullname)
                
                CustomInputField(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(32)
            
            Button {
                print("Sign up here")
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width:340, height: 50)
            }
            .background(Color(.systemBlue))
            .clipShape(Capsule())
            .shadow(color: .gray.opacity(0.5), radius: 10)
            .padding()
            
            Spacer()
            
            Button {
                dismissPresentationMode.callAsFunction()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
