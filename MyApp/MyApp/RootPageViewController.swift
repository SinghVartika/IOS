//
//  RootPageViewController.swift
//  MyApp
//
//  Created by TTN on 11/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class RootPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    lazy var viewControllerList:[UIViewController] = {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = sb.instantiateViewController(withIdentifier: "PinkVC")
        let vc2 = sb.instantiateViewController(withIdentifier: "PurpleVC")
        let vc3 = sb.instantiateViewController(withIdentifier: "YellowVC")
        return [vc1,vc2,vc3]
    }()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        if let firstViewController = viewControllerList.first{
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
        // Do any additional setup after loading the view.
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = viewControllerList.firstIndex(of: viewController) else{return nil}
        let previousIndex = vcIndex - 1
        guard previousIndex >= 0 else{return nil}
        guard viewControllerList.count > previousIndex else{return nil}
        
        return viewControllerList[previousIndex]
    
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = viewControllerList.firstIndex(of: viewController) else{return nil}
        let nextIndex = vcIndex + 1
        guard viewControllerList.count != nextIndex else{return nil}
        guard viewControllerList.count > nextIndex else{return nil}
        return viewControllerList[nextIndex]
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
