//
//  UIElementViewController.swift
//  MyApp
//
//  Created by TTN on 11/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class UIElementViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var imageview : UIImageView!
    @IBOutlet weak var txtDatePicker: UITextField!
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SIGN UP"
        imageview.layer.cornerRadius = imageview.frame.height/2
        imageview.contentMode = .scaleToFill
        imageview.clipsToBounds = true
        showDatePicker()
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
        
     func showDatePicker(){
       //Formate Date
       datePicker.datePickerMode = .date

      //ToolBar
      let toolbar = UIToolbar();
      toolbar.sizeToFit()
      let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
       let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
     let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));

    toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)

     txtDatePicker.inputAccessoryView = toolbar
     txtDatePicker.inputView = datePicker

    }

     @objc func donedatePicker(){

      let formatter = DateFormatter()
      formatter.dateFormat = "dd/MM/yyyy"
      txtDatePicker.text = formatter.string(from: datePicker.date)
      self.view.endEditing(true)
    }

    @objc func cancelDatePicker(){
       self.view.endEditing(true)
     }
   
    @IBAction func pushButtonTapped(_ sender: Bool){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "UIElementViewController2") as! UIElementViewController2
        vc.recievedImage = imageview.image
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
