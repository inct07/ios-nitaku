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
        showNextQuestionBtn()
    }
    
    
    @IBAction func tapNO(_ sender: Any) {
        hiddenBtn()
        showGraph()
        showNextQuestionBtn()
    }
    
    func hiddenBtn() {
        self.yesBtn.isHidden = true
        self.noBtn.isHidden = true
    }
    
    func showGraph() {
        //スタブ40% 60%
        let no: Int = 40;
        let yes: Int = 60;
        let noString = "そう思わない"
        let yesString = "そう思う"
        
        //no
        let viewNo =  UIView(frame: CGRect(x: 50, y: 500, width: 0, height: 100))
        viewNo.backgroundColor = UIColor.blue
        self.view.addSubview(viewNo)
        UIView.animate(withDuration: 0.5, animations: {() -> Void in
            viewNo.frame = CGRect(x: 50, y: 500, width: no * 3, height: 100)
        }, completion: {(Bool) -> Void in
        })
        
        //yes
        let viewYes = UIView(frame: CGRect(x: 350, y: 500, width: 0, height: 100))
        viewYes.backgroundColor = UIColor.red
        self.view.addSubview(viewYes)
        UIView.animate(withDuration: 0.5, animations: {() -> Void in
            viewYes.frame = CGRect(x: 350 - yes * 3, y: 500, width: yes * 3, height: 100)
        }, completion: {(Bool) -> Void in
        })
        
        //add label
        let noLabel = UILabel(frame: CGRect(x: 50, y: 600, width: 200, height: 20))
        noLabel.text = noString + String(no) + "%"
        noLabel.textColor = UIColor.black
        
        let yesLabelText = yesString + String(yes) + "%"
        let yesLabelFont = UIFont(name: "Hiragino Kaku Gothic ProN", size: 18)
        let yesLabelSize = yesLabelText.size(attributes: [NSFontAttributeName : yesLabelFont])
        
        let yesLabel = UILabel(frame: CGRect(x: 350 - yesLabelSize.width, y: 600, width: yesLabelSize.width, height: 20))
        yesLabel.text = yesLabelText
        noLabel.textColor = UIColor.black
        
        self.view.addSubview(noLabel)
        self.view.addSubview(yesLabel)
        
    }
    
    func showNextQuestionBtn() {
    
    }
    
    @IBAction func tapNextButton(_ sender: Any) {
        
    }
    


}
