//
//  ViewController.swift
//  nitaku
//
//  Created by 喜楽智規 on 2017/01/29.
//  Copyright © 2017年 ios07. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var yesBtn: UIButton!
    @IBOutlet var noBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tapYES(_ sender: Any) {
        hiddenBtn()
        showGraph()
    }
    
    
    @IBAction func tapNO(_ sender: Any) {
        hiddenBtn()
        showGraph()
    }
    
    func hiddenBtn() {
        self.yesBtn.isHidden = true
        self.noBtn.isHidden = true
    }
    
    func showGraph() {
        //スタブ50% 50%
        let no = 10;
        let yes = 90;
        
        //yes
        let viewYes = UIView(frame: CGRect(x: 50, y: 500, width: 0, height: 100))
        viewYes.backgroundColor = UIColor.red
        self.view.addSubview(viewYes)
        UIView.animate(withDuration: 0.5, animations: {() -> Void in
            viewYes.frame = CGRect(x: 50, y: 500, width: yes * 3, height: 100)
        }, completion: {(Bool) -> Void in
        })
        
        //no
        let viewNo = UIView(frame: CGRect(x: 350, y: 500, width: 0, height: 100))
        viewNo.backgroundColor = UIColor.blue
        self.view.addSubview(viewNo)
        UIView.animate(withDuration: 0.5, animations: {() -> Void in
            viewNo.frame = CGRect(x: 350 - no * 3, y: 500, width: no * 3, height: 100)
        }, completion: {(Bool) -> Void in
        })

        
               
    }


}
