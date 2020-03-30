//
//  NavKitViewController.swift
//  MyApp
//
//  Created by TTN on 11/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class NavKitViewController: UIViewController {

    @IBOutlet weak var tabBarButton: UIButton!
    @IBOutlet weak var pageviewButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tabBarAction(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "tabBarController")

        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func pageViewAction(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "RootViewController")

        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func viewProp(_ sender: UIButton) {
          
          let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
          let vc = storyBoard.instantiateViewController(withIdentifier: "ViewProperties")

          self.navigationController?.pushViewController(vc, animated: true)

      }
    
    @IBAction func task(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "task3")

        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func progtab(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "TabViewController")

        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func navTab(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "navTabView")

        self.navigationController?.pushViewController(vc, animated: true)

    }
}
