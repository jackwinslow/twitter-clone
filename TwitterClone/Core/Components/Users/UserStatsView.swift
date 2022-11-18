//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by Jack Winslow on 11/17/22.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("807")
                    .fontWeight(.bold)
                    .font(.subheadline)
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 4) {
                Text("6.9M")
                    .fontWeight(.bold)
                    .font(.subheadline)
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
