//
//  UIPlayerView.swift
//  VideoOnboardingScreen
//
//  Created by 吉郷景虎 on 2020/08/03.
//  Copyright © 2020 Kagetora Yoshigo. All rights reserved.
//


import AVKit
import SwiftUI

class UIVideoPlayer: UIView {
    
    var playerLayer = AVPlayerLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        guard let url = URL(string: "https://github.com/BLCKBIRDS/Video-Based-Onboarding-Screen-in-SwiftUI/blob/master/video.mp4?raw=true") else { return }

        let player = AVPlayer(url: url)
        player.isMuted = true
        player.play()
      
        playerLayer.player = player
        playerLayer.videoGravity = AVLayerVideoGravity(rawValue: AVLayerVideoGravity.resizeAspectFill.rawValue)
        
        layer.addSublayer(playerLayer)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

struct PlayerView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIVideoPlayer {
        return UIVideoPlayer()
    }

    func updateUIView(_ uiView: UIVideoPlayer, context: Context) {
        
    }
}
