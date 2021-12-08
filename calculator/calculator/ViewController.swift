//
//  ViewController.swift
//  calculator
//
//  Created by 오지웅 on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var display: UILabel!
    
    var isPlus = false;
    var isMinus = false;
    var isCross = false;
    var isDiv = false;
    
    var sum = Int();
    var num = Int();
    var userTyping = false;
    
    @IBAction func touch1(_ sender: UIButton) {
        
        // func clear
        if( display.text == "0"){
            display.text = ""
        }
        
        let dight = sender.currentTitle!
        print("thouched \(dight) dight");
        if userTyping {
            let textCurrentDisplay = display.text!
            display.text = textCurrentDisplay + dight
        }else{
            display.text = dight
        }
        userTyping = true;
    }
    // C 버튼 기능
    @IBAction func clear(_ sender: Any) {
        display.text = "0"
        sum = 0;
        num = 0;
    }
   
    // + 버튼 기능
    @IBAction func plus(_ sender: Any) {
        if(isPlus==false){
            num = Int(display.text!)!
            print("num",num)
            sum = num + sum
            print("sum",sum)
            userTyping = false
            isPlus = true
        }
    }
    // - 버튼 기능
    @IBAction func minus(_ sender: Any) {
        if(isMinus==false){
            num = Int(display.text!)!
            print("num",num)
            sum = num + sum
            print("sum",sum)
            userTyping = false
            isMinus = true
        }
    }
    // × 버튼 기능
    @IBAction func cross(_ sender: Any) {
        if(isCross==false){
            num = Int(display.text!)!
            print("num",num)
            sum = num + sum
            print("sum",sum)
            userTyping = false
            isCross = true
        }
    }
    // ÷ 버튼 기능
    @IBAction func div(_ sender: Any) {
        if(isDiv==false){
            num = Int(display.text!)!
            print("num",num)
            sum =  num + sum
            print("sum",sum)
            userTyping = false
            isDiv = true
        }
    }
    // = 버튼 기능
    @IBAction func result(_ sender: Any) {
        if isPlus{
            sum  = sum + Int(display.text!)!
            print("result Plus", sum)
            isPlus = false
            display.text = String(sum)
        }
        
        if isMinus {
            sum  = sum - Int(display.text!)!
            print("result Minus", sum)
            isMinus = false
            display.text = String(sum)
        }
       
        if isCross {
            sum  = sum * Int(display.text!)!
            print("result Cross", sum)
            isCross = false
            display.text = String(sum)
        }
        
        if isDiv {
            sum  = sum / Int(display.text!)!
            print("result Div", sum)
            isDiv = false
            display.text = String(sum)
        }
    }
    
}
