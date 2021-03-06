//
//  FormView.swift
//  MyApp
//
//  Created by TTN on 12/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class FormView: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var txt1 : UITextField!
    @IBOutlet weak var txt2 : UITextField!
    @IBOutlet weak var txt3 : UITextField!
    @IBOutlet weak var txt4 : UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detail Form"
        imageview.layer.cornerRadius = imageview.frame.height/2
        
        imageview.contentMode = .scaleToFill
        imageview.clipsToBounds = true
    }
        // Do any additional setup after loading the view.
        @IBAction func addImageBtn(_ sender: Any) {
            let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            
            actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (alert:UIAlertAction!) -> Void in
                self.camera()
            }))
            
            actionSheet.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { (alert:UIAlertAction!) -> Void in
                self.photoLibrary()
            }))
            
            actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            self.present(actionSheet, animated: true, completion: nil)
        }
        
        
        func camera() {
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                let myPickerController = UIImagePickerController()
                myPickerController.delegate = self;
                myPickerController.sourceType = .camera
                self.present(myPickerController, animated: true, completion: nil)
            }
        }
        
        func photoLibrary() {
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                let myPickerController = UIImagePickerController()
                myPickerController.delegate = self;
                myPickerController.sourceType = .photoLibrary
                myPickerController.allowsEditing = true
                self.present(myPickerController, animated: true, completion: nil)
            }
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            self.dismiss(animated: true, completion: nil)
        }
        
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true)
        {
            let pickedImage = info[.editedImage]
            self.imageview.image = pickedImage as? UIImage
        }
    }
    @IBAction func pushButtonTapped(_ sender: UIButton ){
        
        pageViewController.per.append(pageViewController.person(name: txt1.text!, address: txt2.text!, age: txt3.text!, detail: txt4.text!, img: imageview.image!))
        if pageViewController.per.count < 10
        {
        pageViewController.temp.append(pageViewController.person(name: txt1.text!, address: txt2.text!, age: txt3.text!, detail: txt4.text!, img: imageview.image!))
        }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "pageViewController") as! pageViewController
        
        
        self.navigationController?.pushViewController(vc, animated: true)
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
