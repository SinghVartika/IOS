//
//  AutoViewController.swift
//  MyApp
//
//  Created by TTN on 16/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit



class AutoViewController: UIViewController {



    override func viewDidLoad() {

        super.viewDidLoad()

        // Do any additional setup after loading the view.

        ////

        let firstView = UIView()

        firstView.backgroundColor = .green

        view.addSubview(firstView)

        firstView.translatesAutoresizingMaskIntoConstraints = false

        ////

        let secondView = UIView()

        secondView.backgroundColor = .yellow

        view.addSubview(secondView)

        secondView.translatesAutoresizingMaskIntoConstraints = false

        ////

        let thirdView = UIView()

        thirdView.backgroundColor = .red

        view.addSubview(thirdView)

        thirdView.translatesAutoresizingMaskIntoConstraints = false

        /////

        let fourthView = UIView()

        fourthView.backgroundColor = .blue

        view.addSubview(fourthView)

        fourthView.translatesAutoresizingMaskIntoConstraints = false

        /////

        

//

        // constraints for the base view

        NSLayoutConstraint.activate([

            firstView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),

            firstView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),

            firstView.topAnchor.constraint(equalTo: view.topAnchor),

            firstView.leadingAnchor.constraint(equalTo: view.leadingAnchor),

            

            secondView.widthAnchor.constraint(equalTo: firstView.widthAnchor, multiplier: 1),

            secondView.heightAnchor.constraint(equalTo: firstView.heightAnchor, multiplier: 1),

            secondView.topAnchor.constraint(equalTo: view.topAnchor),

            secondView.leadingAnchor.constraint(equalTo: firstView.trailingAnchor),

            

            thirdView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),

            thirdView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),

            thirdView.topAnchor.constraint(equalTo: firstView.bottomAnchor),

            thirdView.leadingAnchor.constraint(equalTo: view.leadingAnchor),

            

            fourthView.widthAnchor.constraint(equalTo: thirdView.widthAnchor, multiplier: 1),

            fourthView.heightAnchor.constraint(equalTo: thirdView.heightAnchor, multiplier: 1),

            fourthView.topAnchor.constraint(equalTo: secondView.bottomAnchor),

            fourthView.leadingAnchor.constraint(equalTo: thirdView.trailingAnchor),

        

        ])

        

       /*firstView.widthAnchor.constraint(equalToConstant: .width*0.5).isActive = true

        firstView.heightAnchor.constraint(equalToConstant: screenSize.height*0.5).isActive = true

        firstView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true

        firstView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true

//////

        secondView.widthAnchor.constraint(equalToConstant: screenSize.width*0.5).isActive = true

        secondView.heightAnchor.constraint(equalToConstant: screenSize.height*0.5).isActive = true

        secondView.leadingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: 0).isActive = true

        secondView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true

        



        thirdView.widthAnchor.constraint(equalToConstant: screenSize.width*0.5).isActive = true

        thirdView.heightAnchor.constraint(equalToConstant: screenSize.height*0.5).isActive = true

        thirdView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true

        thirdView.topAnchor.constraint(equalTo: firstView.bottomAnchor, constant: 0).isActive = true

        



        fourthView.widthAnchor.constraint(equalToConstant: screenSize.width*0.5).isActive = true

        fourthView.heightAnchor.constraint(equalToConstant: screenSize.height*0.5).isActive = true

        fourthView.leadingAnchor.constraint(equalTo: thirdView.trailingAnchor, constant: 0).isActive = true

        fourthView.topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: 0).isActive = true

 */

        let firstLabel = UILabel()

        firstLabel.text = "Ray"

        firstView.addSubview(firstLabel)

        firstLabel.translatesAutoresizingMaskIntoConstraints = false

        

        let secondLabel = UILabel()

        secondLabel.text = "Matthjis"

        secondView.addSubview(secondLabel)

        secondLabel.translatesAutoresizingMaskIntoConstraints = false

        

        let thirdLabel = UILabel()

        thirdLabel.text = "Dennis Ritchie"

        thirdView.addSubview(thirdLabel)

        thirdLabel.translatesAutoresizingMaskIntoConstraints = false

        

        let fourthLabel = UILabel()

        fourthLabel.text = "Brad Cox"

        fourthView.addSubview(fourthLabel)

        fourthLabel.translatesAutoresizingMaskIntoConstraints = false

        

        let firstSubView = UIView()

        firstSubView.backgroundColor = .white

        firstView.addSubview(firstSubView)

        firstSubView.translatesAutoresizingMaskIntoConstraints = false

        

        let secondSubView = UIView()

        secondSubView.backgroundColor = .white

        secondView.addSubview(secondSubView)

        secondSubView.translatesAutoresizingMaskIntoConstraints = false

        

        let thirdSubView = UIView()

        thirdSubView.backgroundColor = .white

        thirdView.addSubview(thirdSubView)

        thirdSubView.translatesAutoresizingMaskIntoConstraints = false

        

        let fourthSubView = UIView()

        fourthSubView.backgroundColor = .white

        fourthView.addSubview(fourthSubView)

        fourthSubView.translatesAutoresizingMaskIntoConstraints = false

        

        var firstImage = UIImageView()

        firstImage.image =  #imageLiteral(resourceName: "smiley2")

        firstSubView.addSubview(firstImage)

        firstImage.translatesAutoresizingMaskIntoConstraints = false

        firstImage.contentMode = .scaleAspectFit



        var secondImage = UIImageView()

        secondImage.image =  #imageLiteral(resourceName: "smiley2")

        secondSubView.addSubview(secondImage)

        secondImage.translatesAutoresizingMaskIntoConstraints = false

        secondImage.contentMode = .scaleAspectFit





        var thirdImage = UIImageView()

        thirdImage.image =  #imageLiteral(resourceName: "ghost")

        thirdSubView.addSubview(thirdImage)

        thirdImage.translatesAutoresizingMaskIntoConstraints = false

        thirdImage.contentMode = .scaleAspectFit



        

        var fourthImage = UIImageView()

        fourthImage.image =  #imageLiteral(resourceName: "smiley2")

        fourthSubView.addSubview(fourthImage)

        fourthImage.translatesAutoresizingMaskIntoConstraints = false

        fourthImage.contentMode = .scaleAspectFit

        

        NSLayoutConstraint.activate([

            firstImage.centerXAnchor.constraint(equalTo: firstSubView.centerXAnchor),

            firstImage.centerYAnchor.constraint(equalTo: firstSubView.centerYAnchor),

            firstImage.heightAnchor.constraint(equalTo: firstSubView.heightAnchor, multiplier: 0.5),

            firstImage.widthAnchor.constraint(equalTo: firstSubView.widthAnchor, multiplier: 0.5),

            

            secondImage.centerXAnchor.constraint(equalTo: secondSubView.centerXAnchor),

            secondImage.centerYAnchor.constraint(equalTo: secondSubView.centerYAnchor),

            secondImage.heightAnchor.constraint(equalTo: secondSubView.heightAnchor, multiplier: 0.5),

            secondImage.widthAnchor.constraint(equalTo: secondSubView.widthAnchor, multiplier: 0.5),

            

            thirdImage.centerXAnchor.constraint(equalTo: thirdSubView.centerXAnchor),

            thirdImage.centerYAnchor.constraint(equalTo: thirdSubView.centerYAnchor),

            thirdImage.heightAnchor.constraint(equalTo: thirdSubView.heightAnchor, multiplier: 0.5),

            thirdImage.widthAnchor.constraint(equalTo: thirdSubView.widthAnchor, multiplier: 0.5),

            

            fourthImage.centerXAnchor.constraint(equalTo: fourthSubView.centerXAnchor),

            fourthImage.centerYAnchor.constraint(equalTo: fourthSubView.centerYAnchor),

            fourthImage.heightAnchor.constraint(equalTo: fourthSubView.heightAnchor, multiplier: 0.5),

            fourthImage.widthAnchor.constraint(equalTo: fourthSubView.widthAnchor, multiplier: 0.5),

        ])

        

        

        

        

        

//      firstSubView.topAnchor.constraint(equalTo: firstView.topAnchor, constant: 0).isActive = true

//       //firstSubView.bottomAnchor.constraint(equalTo: thirdView.topAnchor, constant: 40).isActive = true

//        firstSubView.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 0).isActive = true

//      // firstSubView.trailingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 40).isActive = true

//        firstSubView.widthAnchor.constraint(equalTo: firstView.widthAnchor, multiplier: 0.5).isActive = true

//        firstSubView.heightAnchor.constraint(equalTo: firstView.heightAnchor, multiplier: 0.5).isActive = true

//

        /////

        NSLayoutConstraint.activate([

        firstSubView.widthAnchor.constraint(equalTo: firstView.widthAnchor, multiplier: 0.5),

        firstSubView.heightAnchor.constraint(equalTo: firstView.heightAnchor, multiplier: 0.7),

        firstSubView.centerXAnchor.constraint(equalTo: firstView.centerXAnchor),

        firstSubView.centerYAnchor.constraint(equalTo: firstView.centerYAnchor),

        

        secondSubView.widthAnchor.constraint(equalTo: secondView.widthAnchor, multiplier: 0.5),

        secondSubView.heightAnchor.constraint(equalTo: secondView.heightAnchor, multiplier: 0.7),

        secondSubView.centerXAnchor.constraint(equalTo: secondView.centerXAnchor),

        secondSubView.centerYAnchor.constraint(equalTo: secondView.centerYAnchor),

        

        thirdSubView.widthAnchor.constraint(equalTo: thirdView.widthAnchor, multiplier: 0.5),

        thirdSubView.heightAnchor.constraint(equalTo: thirdView.heightAnchor, multiplier: 0.7),

        thirdSubView.centerXAnchor.constraint(equalTo: thirdView.centerXAnchor),

        thirdSubView.centerYAnchor.constraint(equalTo: thirdView.centerYAnchor),

        

        fourthSubView.widthAnchor.constraint(equalTo: fourthView.widthAnchor, multiplier: 0.5),

        fourthSubView.heightAnchor.constraint(equalTo: fourthView.heightAnchor, multiplier: 0.7),

        fourthSubView.centerXAnchor.constraint(equalTo: fourthView.centerXAnchor),

        fourthSubView.centerYAnchor.constraint(equalTo: fourthView.centerYAnchor),

        ])

        

        NSLayoutConstraint.activate([

            firstLabel.centerXAnchor.constraint(equalTo: firstView.centerXAnchor),

            secondLabel.centerXAnchor.constraint(equalTo: secondView.centerXAnchor),

            thirdLabel.centerXAnchor.constraint(equalTo: thirdView.centerXAnchor),

            fourthLabel.centerXAnchor.constraint(equalTo: fourthView.centerXAnchor),

            

            firstLabel.topAnchor.constraint(equalTo: firstSubView.bottomAnchor,constant: 10),

            secondLabel.topAnchor.constraint(equalTo: secondSubView.bottomAnchor,constant: 10),

            thirdLabel.topAnchor.constraint(equalTo: thirdSubView.bottomAnchor,constant: 10),

            fourthLabel.topAnchor.constraint(equalTo: fourthSubView.bottomAnchor,constant: 10),

        ])

        

        

        

        

       

//        secondSubView.topAnchor.constraint(equalTo: secondView.topAnchor, constant: 40).isActive = true

//        //secondSubView.bottomAnchor.constraint(equalTo: secondView.bottomAnchor, constant: 40).isActive = true

//        secondSubView.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 40).isActive = true

//        //secondSubView.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: 40).isActive = true

//

//

//        secondSubView.widthAnchor.constraint(equalTo: secondView.widthAnchor, multiplier: 0.6).isActive = true

//        secondSubView.heightAnchor.constraint(equalTo: secondView.heightAnchor, multiplier: 0.8).isActive = true

        

        

//////

//        thirdSubView.topAnchor.constraint(equalTo: thirdView.topAnchor, constant: 40).isActive = true

//        //thirdSubView.bottomAnchor.constraint(equalTo: thirdView.bottomAnchor, constant: 40).isActive = true

//        thirdSubView.leadingAnchor.constraint(equalTo: thirdView.leadingAnchor, constant: 40).isActive = true

//        //thirdSubView.trailingAnchor.constraint(equalTo: thirdView.trailingAnchor, constant: 40).isActive = true

//

//        thirdSubView.widthAnchor.constraint(equalTo: thirdView.widthAnchor, multiplier: 0.6).isActive = true

//        thirdSubView.heightAnchor.constraint(equalTo: thirdView.heightAnchor, multiplier: 0.8).isActive = true

        

        

//////

      

//        fourthSubView.topAnchor.constraint(equalTo: fourthView.topAnchor, constant: 40).isActive = true

//       // fourthSubView.bottomAnchor.constraint(equalTo: fourthView.bottomAnchor, constant: 40).isActive = true

//        fourthSubView.leadingAnchor.constraint(equalTo: fourthView.leadingAnchor, constant: 40).isActive = true

//       // fourthSubView.trailingAnchor.constraint(equalTo: fourthView.trailingAnchor, constant: 40).isActive = true

//

//

//        fourthSubView.widthAnchor.constraint(equalTo: fourthView.widthAnchor, multiplier: 0.6).isActive = true

//        fourthSubView.heightAnchor.constraint(equalTo: fourthView.heightAnchor, multiplier: 0.8).isActive = true

//////

        

        



        //firstView.frame  = CGRect(x: 0, y: 0, width: screenSize.width*0.5, height: 100)

        /*

         

                imageView.translatesAutoresizingMaskIntoConstraints = false

                descriptionTextView.translatesAutoresizingMaskIntoConstraints = false

                

                imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

             //   imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

                imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true

                imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true

                imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true

                

                descriptionTextView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50).isActive = true

                descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 50).isActive = true

                descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

                descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

         */

        

    }





}
