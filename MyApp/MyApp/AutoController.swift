//
//  AutoController.swift
//  MyApp
//
//  Created by TTN on 25/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class AutoController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func assg1(_ sender: Bool){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "StackedViewController")
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    @IBAction func assg2(_ sender: Bool){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CalculatorStackViewController")
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    @IBAction func assg3(_ sender: Bool){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AutoViewController")
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    @IBAction func assg4(_ sender: Bool){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ScrollViewController")
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
