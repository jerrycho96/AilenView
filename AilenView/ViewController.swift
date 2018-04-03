//
//  ViewController.swift
//  AilenView
//
//  Created by D7703_29 on 2018. 4. 3..
//  Copyright © 2018년 조영진. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 1;
    var a = true;
    
    
    @IBOutlet var number: UILabel!
    @IBOutlet var AilenImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        AilenImageView.image = UIImage(named: "frame1.png")
        number.text = "1"
    }

    @IBAction func UpdateImage(_ sender: Any) {
        if count == 5 {
            a = false
        } else if count == 1 {
            a = true
        }
        
        if a == true {
            count += 1;
        } else if a == false {
            count = count - 1
        }
        
        AilenImageView.image = UIImage(named: "frame\(count).png")
        number.text = String(count)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

