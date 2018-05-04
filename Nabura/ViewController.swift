//
//  ViewController.swift
//  Nabura
//
//  Created by Orange777 on 2018/05/03.
//  Copyright © 2018年 Orange777. All rights reserved.
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

    let delegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction func start(_ sender: Any) {
        for i in 0..<7 { //Player A
            let x = Int(arc4random_uniform(UInt32(delegate.functions.count)))
            delegate.ap[i] = delegate.functions[x]
            delegate.functions.remove(at: x)
        }
        
        for i in 0..<7 { //Player B
            let x = Int(arc4random_uniform(UInt32(delegate.functions.count)))
            delegate.bp[i] = delegate.functions[x]
            delegate.functions.remove(at: x)
        }
    }
    
}

