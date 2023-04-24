//
//  ViewController.swift
//  Cookup
//
//  Created by ROMER Pierre-Elie on 21/03/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Username_textfield: UITextField!
    @IBOutlet var Password_textfield: UIView!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var LeftView: UIView!
    @IBOutlet weak var BackView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Edit Button
        LoginButton.layer.cornerRadius = 20
        
        
        //Edit Textfield
        Username_textfield.layer.cornerRadius = 20
        
        
        //Edit LeftView
        LeftView.layer.borderColor =  UIColor.green.cgColor
        LeftView.layer.cornerRadius = 20
        
        
        
        
        //Edit BackView
        BackView.layer.borderColor = UIColor.green.cgColor
        BackView.layer.cornerRadius = 20
    }
        
        
    @IBAction func Login_Tapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        let HC = HomeViewController()
        navigationController?.pushViewController(HC, animated: true)
        
        
    }
}
    
