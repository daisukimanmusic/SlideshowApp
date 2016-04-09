//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 松波優也 on 2016/03/31.
//  Copyright © 2016年 yuya.matsunami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let photo = [UIImage(named:"11.jpg"), UIImage(named:"2.jpg"), UIImage(named:"3.jpg")]
    
    var index = 0

    
    //進む・戻る
    @IBAction func next(sender: AnyObject) {
        
        index += 1
        if index >= 3 {
            index = 0
        }
       
        let image = photo[index]
        image1.image = image
        
        
    }
    
    @IBAction func back(sender: AnyObject) {
        
        index += -1
        if index <= -1 {
            index = 2
        }
        
        let image = photo[index]
        image1.image = image
    }
    
    @IBOutlet weak var image1: UIImageView!
    
    //タイマー
    var timer = NSTimer()
    
    
    @IBOutlet weak var next: UIButton!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var startstop: UIButton!

    //スライドの再生、停止ボタン
    
    @IBAction func startstop(sender: AnyObject) {
        
        if !timer.valid {
            timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: #selector(ViewController.result), userInfo: nil, repeats: true)
            
            next.hidden = true
            back.hidden = true
            
            startstop.setTitle("停止", forState: UIControlState.Normal)
            
        } else {
            // タイマーが動いていない時
            timer.invalidate()
            
            next.hidden = false
            back.hidden = false
            
            startstop.setTitle("再生", forState: UIControlState.Normal)
            
        }
        
        
    }
    
    
    
    func result() {
        
        index += 1
        if index >= 3 {
            index = 0
        }
        
        let image = photo[index]
        image1.image = image
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //画像拡大
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController
     resultViewController.image = self.image1.image
        
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }

    
    
}

