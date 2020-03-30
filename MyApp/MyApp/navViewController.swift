//
//  navViewController.swift
//  MyApp
//
//  Created by TTN on 11/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class navViewController: UIViewController {
    @IBOutlet weak var roundedView : UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        editCall()
        
    }
        
        func editCall(){
        roundedView.layer.backgroundColor = UIColor.red.cgColor
        roundedView.layer.borderWidth = 5.0
        roundedView.layer.borderColor = UIColor.black.cgColor
        roundedView.layer.cornerRadius = 40.0

        roundedView.layer.shadowColor = UIColor.black.cgColor
        roundedView.layer.shadowOffset = CGSize(width: 20.0, height: 20.0)
        roundedView.layer.shadowOpacity = 0.3
        roundedView.layer.shadowRadius = 4.0
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
