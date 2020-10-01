//
//  MenuOption.swift
//  SlideMenuTutorial
//
//  Created by Ngo Dang tan on 9/30/20.
//
import UIKit
enum MenuOption: Int, CustomStringConvertible {
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    var description: String{
        switch self{
        
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Notifications: return "Notifications"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage{
        switch self{
        case.Profile: return UIImage(named: "profile_ic") ?? UIImage()
        case.Inbox: return UIImage(named: "mail_ic") ?? UIImage()
        case .Notifications: return UIImage(named: "notifications_ic") ?? UIImage()
        case .Settings: return UIImage(named: "settings") ?? UIImage()
        }
    }
}
