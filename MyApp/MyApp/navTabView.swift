//
//  navTabView.swift
//  MyApp
//
//  Created by TTN on 12/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class navTabView: UITabBarController {
        
            
            let firstViewController = firstVC()
            let secondViewController = secondVC()
          
          override func viewDidLoad() {
              
              super.viewDidLoad()
                navigationController?.navigationBar.barTintColor = UIColor.red
            
                viewControllers = [createControllers(title : "One", VC : firstViewController),createControllers(title : "Two", VC : secondViewController)]
      //         Do any additional setup after loading the view.
          }
          
          func createControllers(title: String , VC : UIViewController) -> UINavigationController{
              
              
              let mainVC = UINavigationController(rootViewController: VC)
              mainVC.tabBarItem.title = title
              return mainVC
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
