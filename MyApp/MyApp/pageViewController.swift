//
//  pageViewController.swift
//  MyApp
//
//  Created by TTN on 12/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class pageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  
        @IBOutlet weak var btn : UIButton!
        @IBOutlet weak var tableView: UITableView!
        
        
      
        
    //    var txt1 : UILabel
    //    var txt2 : UILabel
    //    var txt3 : UILabel
    //    var txt4 : UILabel
    //
        struct  person {
                           var name : String
                           var address : String
                           var age : String
                           var detail : String
                           var img : UIImage
                       }
               
            public static var per : [person] = []
            public static var temp : [person] = []
       
        

        override func viewDidLoad() {
            
            super.viewDidLoad()

            
            let nib = UINib.init(nibName: "TableViewCell", bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: "myTableViewCell")
            // Do any additional setup after loading the view.
        }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
        
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return pageViewController.temp.count
           }
           
           func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewCell") as! TableViewCell
            cell.configureCell(text1: pageViewController.temp[indexPath.row].name, text2: pageViewController.temp[indexPath.row].address, text3: pageViewController.temp[indexPath.row].age, text4: pageViewController.temp[indexPath.row].detail, img: pageViewController.temp[indexPath.row].img)
               return cell
           
            
           }
   
        
        @IBAction func pushButtonTapped(_ sender: UIButton){
            let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "FormView")
            
            self.navigationController?.pushViewController(vc, animated: true)
            
            
    }
    
    @IBAction func refreshButtonTapped(){
        if pageViewController.per.count>9
        {
            var j = 0
            pageViewController.temp = []
            for i in 10..<(pageViewController.per.count-1)
            {
                pageViewController.temp[j].self = pageViewController.per[i].self
                j = j+1
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
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
