//
//  tabcalViewController.swift
//  MyApp
//
//  Created by TTN on 30/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class tabcalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Question1(_ sender : UIButton){
       let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
     let vc = storyboard.instantiateViewController(withIdentifier: "pageViewController")
    self.navigationController!.pushViewController(vc, animated: true)
    }
    
    @IBAction func Question2(_ sender : UIButton){
       let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
     let vc = storyboard.instantiateViewController(withIdentifier: "NestedTableViewController")
    self.navigationController!.pushViewController(vc, animated: true)
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
