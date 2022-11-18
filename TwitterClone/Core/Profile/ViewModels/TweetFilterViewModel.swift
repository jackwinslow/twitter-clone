//
//  TweetFilterViewModel.swift
//  TwitterClone
//
//  Created by Jack Winslow on 11/16/22.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets, replies, likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
