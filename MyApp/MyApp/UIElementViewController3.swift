//
//  UIElementViewController3.swift
//  MyApp
//
//  Created by TTN on 11/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class UIElementViewController3: UIViewController {
    
    @IBOutlet weak var label : UILabel!
    @IBOutlet weak var segmentControl : UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    @IBAction func indexChanged(_ sender: Any) {
        switch segmentControl.selectedSegmentIndex
        {
        case 0:
            label.text = "Employer Segment Selected"
        case 1:
            label.text = "Employee Segment Selected"
        default:
            break
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
