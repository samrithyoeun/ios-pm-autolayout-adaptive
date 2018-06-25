//
//  ViewController.swift
//  ios-pm-autolayout-adaptive
//
//  Created by Samrith Yoeun on 6/25/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit


class ViewController: UIViewController  {


    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(UIDevice.modelName)
        
        if UIDevice.modelName == "iPhone 8" {
            
            greenView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            greenView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            
            blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
            blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:0).isActive = true
            
        }else{
            
            blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:0).isActive = true
            
            redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            
            greenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        }
    }
    
    
}





