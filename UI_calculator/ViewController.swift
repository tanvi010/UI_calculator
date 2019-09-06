//
//  ViewController.swift
//  UI_calculator
//
//  Created by COE-030 on 23/08/19.
//  Copyright © 2019 COe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var txtB: UITextField!
    @IBOutlet weak var txtA: UITextField!
    
    
    
    @IBAction func SegmentValueChange(_ sender: UISegmentedControl)
    {
        print("the value is \(txtB.text!)&\(txtA.text!)")
        if (txtB.text) != "" && (txtA.text) != ""
        {
        let a = (Int(txtA.text!))!
        let b = (Int(txtB.text!))!
        var c = 0
        
        switch sender.selectedSegmentIndex
        {
        case 0 :
                c = a + b
        case 1 :
                c = a - b
        case 2 :
                c = a * b
        case 3 :
                c = a / b
            
        default:
            print("nothing selected")
            
        }
        let alterview = UIAlertController(title:"Answer",message:"Answer is \(c)",preferredStyle :.alert)
        let btnResign = UIAlertAction(title: "cancel", style:.cancel)
        {
            (action) in self.dismiss(animated: true, completion: nil)
        }
            alterview.addAction(btnResign)
    
            
        self.present(alterview,animated: true)
        {
            print("after view present")
        }
        let errorShow = UIAlertController(title: "Error", message: "Please enter the value in the text box ", preferredStyle: .actionSheet)
        let btncancle = UIAlertAction(title: "cancel", style: .cancel)
        {
            (action) in
            self.dismiss(animated: true, completion: nil)
        }
            errorShow.addAction(btncancle)
            self.present(errorShow,animated: true,completion: nil)
    }
        func touchesBegan(_touches:Set<UITouch>, with event: UIEvent?)
        {
            self.view.endEditing(true)
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


}


