//
//  ViewControllerAspectRatio.swift
//  MyApp
//
//  Created by TTN on 04/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit


class ViewControllerAspectRatio: UIViewController {
    @IBOutlet weak var imageOutlet : UIImageView!
    @IBOutlet weak var pushButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageOutlet.layer.cornerRadius = imageOutlet.frame.height/2
        imageOutlet.contentMode = .scaleToFill
        imageOutlet.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushButtonTapped(_ sender : UIButton){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
      let vc = storyboard.instantiateViewController(withIdentifier: "ViewControllerAspectRatio2")
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
