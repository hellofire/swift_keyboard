//
//  ViewController.swift
//  swift_keyboard
//
//  Created by fire on 2017/6/15.
//  Copyright © 2017年 fire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var numTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emailTxt.keyboardType = .emailAddress
        emailTxt.clearButtonMode = .whileEditing

        numTxt.keyboardType = .numberPad
        
        self.addDoneButtonOnKeyboard()
        
    }
    
    //在鍵盤上 新增按鈕
    func addDoneButtonOnKeyboard() {

        //btn1.setImage(UIImage(named: "tab-album"), forState: .plan)

        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
            doneToolbar.barStyle   = UIBarStyle.default
        
        let flexSpace              = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        
        //文字按鈕
        let doneBtn: UIBarButtonItem  = UIBarButtonItem(title: "確定", style: UIBarButtonItemStyle.done, target: self, action: #selector(doneButtonAction))
        
        //圖片按鈕
        let gogoBtn: UIBarButtonItem  = UIBarButtonItem(image: UIImage(named: "tab-album"), style: UIBarButtonItemStyle.plain, target: self, action: #selector(gogoButtonAction))
        
        
        var items = [UIBarButtonItem]()
        items.append(gogoBtn) //左邊按鈕
        items.append(flexSpace)
        items.append(doneBtn) //右邊按鈕
        
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        //指定哪個 text 欄位
        self.emailTxt.inputAccessoryView = doneToolbar

    }
    
    func gogoButtonAction() {
    
        print("gogo.....")
        //do something ...

    }
    
    func doneButtonAction() {
        self.emailTxt.resignFirstResponder()
        
        print("done.....")
        
        //do something ...
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

