//
//  ProfileViewController.swift
//  Cookup
//
//  Created by ROMER Pierre-Elie on 04/05/2023.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var First_TBV: UITableView!
    
    @IBOutlet weak var Second_TBV: UITableView!
    @IBOutlet weak var Third_TBV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        First_TBV.layer.borderColor = UIColor.black.cgColor
        First_TBV.layer.borderWidth = 2
        First_TBV.layer.cornerRadius = 50
        
        Second_TBV.layer.borderColor = UIColor.black.cgColor
        Second_TBV.layer.borderWidth = 2
        Second_TBV.layer.cornerRadius = 50
        
        Third_TBV.layer.borderColor = UIColor.black.cgColor
        Third_TBV.layer.borderWidth = 2
        Third_TBV.layer.cornerRadius = 50
        
        // Do any additional setup after loading the view.
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
