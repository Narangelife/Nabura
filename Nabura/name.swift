//
//  ViewController.swift
//  Nabura
//
//  Created by Orange777 on 2018/05/03.
//  Copyright © 2018年 Orange777. All rights reserved.
//

import UIKit

class name: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        own.text = delegate.nowturn
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let delegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var own: UILabel!
    
    @IBAction func myturn(_ sender: Any) {
        let alertController = UIAlertController(title: "Caution", message: "Are you \(delegate.nowturn)?", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "Yes", style: .default, handler:{ (action: UIAlertAction!) -> Void in
            self.performSegue(withIdentifier: "letf", sender: nil)
        })
        let cancelAction = UIAlertAction(title: "No", style: .cancel){
            action in ()
        }
        alertController.addAction(defaultAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
    }
    
}

