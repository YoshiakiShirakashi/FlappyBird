//
//  ViewController.swift
//  FlappyBird
//
//  Created by 白樫芳昭 on 2019/07/20.
//  Copyright © 2019 yoshiaki.sjirakashi. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SKViewに型を変換する
        let skView = self.view as! SKView
        
        // FPSを表示する
        skView.showsFPS = true
        
        // ノードの数を表示する
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する
        let scene = GameScene(size:skView.frame.size) 
        
        // ビューにシーンを表示する
        skView.presentScene(scene)
    }
    // ステータスバーを消す
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
}
