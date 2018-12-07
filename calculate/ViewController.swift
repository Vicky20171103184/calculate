//
//  ViewController.swift
//  calculate
//
//  Created by s20171103184 on 2018/12/7.
//  Copyright © 2018 s20171103184. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var xianshi: UILabel!
    
    var qianyige:Double = 0
    var houyige:Double = 0
    var jieguo:Double = 0
    
    var point:Double = 0.0
    
    var fuhao:String?
    
    @IBAction func shuzi(sender: AnyObject) {
        if (point == 0.0) {
            switch sender.currentTitle! {
            case "1"?:
                houyige = 1 + houyige * 10
            case "2"?:
                houyige = 2 + houyige * 10
            case "3"?:
                houyige = 3 + houyige * 10
            case "4"?:
                houyige = 4 + houyige * 10
            case "5"?:
                houyige = 5 + houyige * 10
            case "6"?:
                houyige = 6 + houyige * 10
            case "7"?:
                houyige = 7 + houyige * 10
            case "8"?:
                houyige = 8 + houyige * 10
            case "9"?:
                houyige = 9 + houyige * 10
            case "0"?:
                houyige = houyige * 10
            default:
                print("shuzi")
            }
        } else if (point != 0.0) {
            switch sender.currentTitle! {
            case "1"?:
                houyige = (point * 1) + houyige
            case "2"?:
                houyige = (point * 2) + houyige
            case "3"?:
                houyige = (point * 3) + houyige
            case "4"?:
                houyige = (point * 4) + houyige
            case "5"?:
                houyige = (point * 5) + houyige
            case "6"?:
                houyige = (point * 6) + houyige
            case "7"?:
                houyige = (point * 6) + houyige
            case "8"?:
                houyige = (point * 6) + houyige
            case "9"?:
                houyige = (point * 6) + houyige
            case "0"?:
                point = point * 0.1
            default:
                print("shuzi")
            }
            point = point * 0.1
        }
        
        xianshi.text = String(houyige)
        
    }
    
    @IBAction func add(sender: AnyObject) {
        
        if houyige != 0 {
            qianyige = houyige
            houyige = 0
        }
        
        point = 0.0
        fuhao = sender.currentTitle
        
    }
    @IBAction func clear(sender: AnyObject) {
        qianyige = 0
        houyige = 0
        jieguo = 0
        point = 0.0
        xianshi.text = "0"
        
    }
    @IBAction func output(sender: AnyObject) {
        if (qianyige != 0) && (houyige != 0) && (fuhao != "") {
            switch fuhao! {
            case "+":
                jieguo = qianyige + houyige
            case "-":
                jieguo = qianyige - houyige
            case "×":
                jieguo = qianyige * houyige
            case "÷":
                jieguo = qianyige / houyige
            default:
                print("output")
            }
            xianshi.text = String(jieguo)
            
            fuhao = ""
            houyige = 0
            qianyige = jieguo
            point = 0.0
        }
        
    }
    
    @IBAction func point(sender: AnyObject) {
        if point == 0.0 {
            point = 0.1
        }
        
    }
    
}
