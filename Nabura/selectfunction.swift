//
//  ViewController.swift
//  Nabura
//
//  Created by Orange777 on 2018/05/03.
//  Copyright © 2018年 Orange777. All rights reserved.
//

import UIKit

class selectfunction: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if delegate.nowturn == "A"{
            f1.text = delegate.ap[0]
            f2.text = delegate.ap[1]
            f3.text = delegate.ap[2]
            f4.text = delegate.ap[3]
            f5.text = delegate.ap[4]
            f6.text = delegate.ap[5]
            f7.text = delegate.ap[6]
        }else if delegate.nowturn == "B"{
            f1.text = delegate.bp[0]
            f2.text = delegate.bp[1]
            f3.text = delegate.bp[2]
            f4.text = delegate.bp[3]
            f5.text = delegate.bp[4]
            f6.text = delegate.bp[5]
            f7.text = delegate.bp[6]
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let delegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var f1: UILabel!
    @IBOutlet weak var f2: UILabel!
    @IBOutlet weak var f3: UILabel!
    @IBOutlet weak var f4: UILabel!
    @IBOutlet weak var f5: UILabel!
    @IBOutlet weak var f6: UILabel!
    @IBOutlet weak var f7: UILabel!
    
    @IBOutlet weak var f1s: UISwitch!
    @IBOutlet weak var f2s: UISwitch!
    @IBOutlet weak var f3s: UISwitch!
    @IBOutlet weak var f4s: UISwitch!
    @IBOutlet weak var f5s: UISwitch!
    @IBOutlet weak var f6s: UISwitch!
    @IBOutlet weak var f7s: UISwitch!
    
    @IBAction func submit(_ sender: Any) {
        if ((f1s.isOn || f2s.isOn || f3s.isOn || f4s.isOn || f5s.isOn || f6s.isOn || f7s.isOn) == true){
            if f1s.isOn == true {
                delegate.used.append(f1.text!)
                if delegate.nowturn == "A"{
                    let n = delegate.ap.index(of: f1.text!)
                    delegate.ap.remove(at: n!)
                }else if delegate.nowturn == "B"{
                    let n = delegate.bp.index(of: f1.text!)
                    delegate.bp.remove(at: n!)
                }
            }
            if f2s.isOn == true {
                delegate.used.append(f2.text!)
                if delegate.nowturn == "A"{
                    let n = delegate.ap.index(of: f2.text!)
                    delegate.ap.remove(at: n!)
                }else if delegate.nowturn == "B"{
                    let n = delegate.bp.index(of: f2.text!)
                    delegate.bp.remove(at: n!)
                }
            }
            if f3s.isOn == true {
                delegate.used.append(f3.text!)
                if delegate.nowturn == "A"{
                    let n = delegate.ap.index(of: f3.text!)
                    delegate.ap.remove(at: n!)
                }else if delegate.nowturn == "B"{
                    let n = delegate.bp.index(of: f3.text!)
                    delegate.bp.remove(at: n!)
                }
            }
            if f4s.isOn == true {
                delegate.used.append(f4.text!)
                if delegate.nowturn == "A"{
                    let n = delegate.ap.index(of: f4.text!)
                    delegate.ap.remove(at: n!)
                }else if delegate.nowturn == "B"{
                    let n = delegate.bp.index(of: f4.text!)
                    delegate.bp.remove(at: n!)
                }
            }
            if f5s.isOn == true {
                delegate.used.append(f5.text!)
                if delegate.nowturn == "A"{
                    let n = delegate.ap.index(of: f5.text!)
                    delegate.ap.remove(at: n!)
                }else if delegate.nowturn == "B"{
                    let n = delegate.bp.index(of: f5.text!)
                    delegate.bp.remove(at: n!)
                }
            }
            if f6s.isOn == true {
                delegate.used.append(f6.text!)
                if delegate.nowturn == "A"{
                    let n = delegate.ap.index(of: f6.text!)
                    delegate.ap.remove(at: n!)
                }else if delegate.nowturn == "B"{
                    let n = delegate.bp.index(of: f6.text!)
                    delegate.bp.remove(at: n!)
                }
            }
            if f7s.isOn == true {
                delegate.used.append(f7.text!)
                if delegate.nowturn == "A"{
                    let n = delegate.ap.index(of: f7.text!)
                    delegate.ap.remove(at: n!)
                }else if delegate.nowturn == "B"{
                    let n = delegate.bp.index(of: f7.text!)
                    delegate.bp.remove(at: n!)
                }
            }
            self.performSegue(withIdentifier: "fini", sender: nil)
        }else{
            let alert = UIAlertController(title: "ALERT", message: "Select at least one.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    
}

