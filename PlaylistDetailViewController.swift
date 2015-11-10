//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by Matt Alston on 10/4/15.
//  Copyright © 2015 Matt Alston. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {
    
    var playlist: Playlist?
    @IBOutlet weak var playlistImageView: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!
    @IBOutlet weak var playlistArtist0: UILabel!
    @IBOutlet weak var playlistArtist1: UILabel!
    @IBOutlet weak var playlistArtist2: UILabel!
    @IBOutlet weak var playlistArtist3: UILabel!
    @IBOutlet weak var playlistArtist4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if playlist != nil {
            playlistImageView.image = playlist!.largeIcon
            playlistImageView.backgroundColor = playlist!.backgroundColor
            playlistTitle.text = playlist!.title
            playlistDescription.text = playlist!.description
            playlistArtist0.text = playlist!.artists[0]
            playlistArtist1.text = playlist!.artists[1]
            playlistArtist2.text = playlist!.artists[2]
            playlistArtist3.text = playlist!.artists[3]
            playlistArtist4.text = playlist!.artists[4]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
