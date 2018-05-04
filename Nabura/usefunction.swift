//
//  ViewController.swift
//  Nabura
//
//  Created by Orange777 on 2018/05/03.
//  Copyright © 2018年 Orange777. All rights reserved.
//

import UIKit

class usefunction: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sample.text = "\(delegate.nowturn) used..."
        for n in 0..<(delegate.used.count) {
            log.text = log.text + "\n\(delegate.used[n])"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let delegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var log: UITextView!
    @IBOutlet weak var sample: UILabel!
    
    
    @IBAction func looping(_ sender: Any) {
        if delegate.nowturn == "A"{
            for _ in 0..<(delegate.used.count) {
                if delegate.functions.isEmpty ?? true{
                    error()
                }
                let x = Int(arc4random_uniform(UInt32(delegate.functions.count)))
                delegate.ap.append(delegate.functions[x])
                delegate.functions.remove(at: x)
            }
            delegate.nowturn = "B"
        }else if delegate.nowturn == "B"{
            for _ in 0..<(delegate.used.count) {
                if delegate.functions.isEmpty ?? true{
                    error()
                }
                let x = Int(arc4random_uniform(UInt32(delegate.functions.count)))
                delegate.bp.append(delegate.functions[x])
                delegate.functions.remove(at: x)
            }
            delegate.nowturn = "A"
        }
        
        delegate.used.removeAll()
        self.performSegue(withIdentifier: "saiki", sender: nil)
    }
    
    func error(){
        let alertController = UIAlertController(title: "ERROR", message: "", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "Detail", style: .default, handler:{ (action: UIAlertAction!) -> Void in
            self.performSegue(withIdentifier: "error", sender: nil)
        })
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }
    
    
    
}

