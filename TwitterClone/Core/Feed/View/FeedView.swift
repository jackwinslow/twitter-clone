//
//  FeedView.swift
//  TwitterClone
//
//  Created by Jack Winslow on 11/5/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...20, id: \.self) { _ in
                    VStack(spacing: 0) {
                        TweetsRowView()
                        
                        Divider()
                    }
                    .padding(.bottom)
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
