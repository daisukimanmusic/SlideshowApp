//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 松波優也 on 2016/04/03.
//  Copyright © 2016年 yuya.matsunami. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController{
    
    @IBOutlet weak var imagezoom: UIImageView!
    
    var image: UIImage? = nil
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.imagezoom.image = self.image
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
