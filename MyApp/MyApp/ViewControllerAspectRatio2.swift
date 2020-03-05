//
//  ViewControllerAspectRatio2.swift
//  MyApp
//
//  Created by TTN on 05/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class ViewControllerAspectRatio2: UIViewController {
    @IBOutlet weak var popButton : UIButton!
    @IBOutlet weak var imageOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageOutlet.layer.cornerRadius = imageOutlet.frame.height/2
        imageOutlet.contentMode = .scaleToFill
        imageOutlet.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func popBotton(_ sender: Bool){
        self.navigationController?.popViewController(animated: true)
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
