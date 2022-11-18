//
//  SideMenuViewModel.swift
//  TwitterClone
//
//  Created by Jack Winslow on 11/17/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile, lists, booksmarks, logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .lists: return "Lists"
        case .booksmarks: return "Bookmarks"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .booksmarks: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
}
