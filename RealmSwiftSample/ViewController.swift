//
//  ViewController.swift
//  TimeSchedule
//
//  Created by yukihiro moriyama on 2016/04/13.
//  Copyright © 2016年 YukihiroMoriyama. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController,UITextFieldDelegate {

    let realm = try! Realm()
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var notificationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self

    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        let user = User()
    
        if let txt = textField.text {
            if txt == "" {
                return true
            }
            
            user.id = realm.objects(User).count + 1
            user.name = txt
            
            try! realm.write {
                realm.add(user)
            }
            
            textField.text = ""
            notificationLabel.text = "登録完了"
        }
        
        return true
    }
    
    @IBAction func back(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

