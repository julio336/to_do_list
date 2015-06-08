//
//  SecondViewController.swift
//  To_Do_List
//
//  Created by Julio Ahuactzin on 07/06/15.
//  Copyright (c) 2015 Julio Ahuactzin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet var item: UITextField!
    
    
    @IBAction func addItem(sender: AnyObject) {
        
        if item.text != "" {
            toDoList.append(item.text!)
            item.text = ""
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        } else {
            var alert = UIAlertController(title: "Alert!", message: "Please, introducir a To DO Item", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        
        item.resignFirstResponder()
        return true
    }


}



