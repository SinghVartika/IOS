//
//  StackedViewController.swift
//  MyApp
//
//  Created by TTN on 16/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class StackedViewController: UIViewController {
    
    @IBOutlet weak var sub : UIButton!
    @IBOutlet weak var val : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stack()
    {
        switch val.text {
        case "1":
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "Stack1")
                self.navigationController!.pushViewController(vc, animated: true)
        case "2":
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "Stack2")
                self.navigationController!.pushViewController(vc, animated: true)
        case "3":
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "Stack3")
                self.navigationController!.pushViewController(vc, animated: true)
        case "4":
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "Stack4")
                self.navigationController!.pushViewController(vc, animated: true)
        default:
            print("1")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
