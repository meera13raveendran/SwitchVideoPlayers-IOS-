//
//  ViewController.swift
//  SwitchVideoPlayer
//
//  Created by Sreekanth on 23/06/16.
//  Copyright © 2016 Ruby Software. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit



class ViewController: UIViewController {
    
    @IBOutlet var webViewAV: UIWebView!
    
    @IBOutlet var avView: UIView!
    @IBOutlet var webView: UIWebView!
    
    
    @IBOutlet var viewBottom: UIView!
    
    var id : Int = 0
    
    let avPlayer = AVPlayer()
    var avPlayerLayer: AVPlayerLayer!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        let h = webView.frame.size.height-20
        
        let widthReal = (webView.frame.size.width/2)
        let urL = "https://www.youtube.com"+"/embed/"+"IxJnpcuC05c"
        
        let width = widthReal
        let frame = 50
        
        let code:NSString = "<iframe width =\(width) height =\(h) src= \"\(urL)?&playsinline=1&showinfo=0\" frameborder = \(frame) allowfullscreen  ></iframe>";
        
        self.webView.loadHTMLString(code as String, baseURL: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        avPlayer.play() // Start the playback
    }
    
    
    @IBAction func buttonClick(sender: AnyObject) {
        
        id = 2
        
        if (webView.hidden == false) {
            
        print("ammu")
        webViewAV.hidden = false
        webView.hidden = true
        
        let videoURL = NSURL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let player = AVPlayer(URL: videoURL!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.webViewAV.bounds
        self.webViewAV.layer.addSublayer(playerLayer)
        player.play()
            
        }
        
        else {
            
            print("Meera")
            
            webViewAV.hidden = true
            webView.hidden = false
            let h = webView.frame.size.height-20
            
            let widthReal = (webView.frame.size.width)
            let urL = "https://www.youtube.com"+"/embed/"+"IxJnpcuC05c"
            
            let width = widthReal
            let frame = 50
            
            let code:NSString = "<iframe width =\(width) height =\(h) src= \"\(urL)?&playsinline=1&showinfo=0\" frameborder = \(frame) allowfullscreen  ></iframe>";
            
            self.webView.loadHTMLString(code as String, baseURL: nil)
            
            
        }
        
    }
  
}

