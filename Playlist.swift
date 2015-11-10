//
//  Playlist.swift
//  Algorhythm
//
//  Created by Matt Alston on 10/5/15.
//  Copyright © 2015 Matt Alston. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()
    
    init(index: Int) {
        let musicLibrary = MusicLibrary().library
        let playlistInfo = musicLibrary[index]
        
        title = (playlistInfo["title"] as! String)
        description = (playlistInfo["description"] as! String)
        
        let iconName = playlistInfo["icon"] as! String
        icon = UIImage(named: iconName)
        
        let largeIconName = playlistInfo["largeIcon"] as! String
        largeIcon = UIImage(named: largeIconName)
        
        artists += playlistInfo["artists"] as! [String]
        
        let colorsDictionary = playlistInfo["backgroundColor"] as! [String: CGFloat]
        backgroundColor = rgbColorFromDictionary(colorsDictionary)
    }
    
    func rgbColorFromDictionary(colorDictionary: [String: CGFloat] ) -> UIColor {
        
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
}