//
//  UIElementViewController2.swift
//  MyApp
//
//  Created by TTN on 11/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class UIElementViewController2: UIViewController {
    
    @IBOutlet weak var textField : UITextField!
    @IBOutlet weak var image : UIImageView!
    var recievedImage : UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "HOME"
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.red.cgColor
        image.image = recievedImage
        image.layer.cornerRadius = image.frame.height/2
        image.contentMode = .scaleToFill
        image.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    @IBAction func pushButtonTapped(_ sender: Bool){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "UIElementViewController3")
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
