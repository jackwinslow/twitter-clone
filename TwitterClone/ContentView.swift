//
//  ContentView.swift
//  TwitterClone
//
//  Created by Jack Winslow on 11/4/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    var body: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
                .toolbar(showMenu ? .hidden : .visible)
                .animation(.none, value: showMenu)
            
            if showMenu {
                Color.black.opacity(showMenu ? 0.25 : 0.0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            showMenu = false
                        }
                    }
            }
            
            SideMenuView()
                .background(Color.white)
                .frame(width: 300)
                .offset(x: showMenu ? 0: -300)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    withAnimation(.easeInOut) {
                        showMenu.toggle()
                    }
                } label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }

            }
        }
        .onAppear {
            showMenu = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
