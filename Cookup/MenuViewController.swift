//
//  MenuViewController.swift
//  Cookup
//
//  Created by ROMER Pierre-Elie on 04/05/2023.
//

import UIKit

class MenuViewController: UIViewController, UISplitViewControllerDelegate {
    @IBOutlet weak var ProfileButton: UIButton!
    @IBOutlet weak var StreamButton: UIButton!
    @IBOutlet weak var DashboardButton: UIButton!
    @IBOutlet weak var MessageButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

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

    @IBAction func Profile_Tapped(_ sender: Any) {
        print("profile tapped")        
    }
    @IBAction func Stream_Tapped(_ sender: Any) {
       print("stream tapped")
        let menuVC = MenuViewController()
        let menuNavController = UINavigationController(rootViewController: menuVC)
        
        let streamVC = StreamViewController()
        let profileNavController = UINavigationController(rootViewController: streamVC)
        
        let splitViewController = UISplitViewController()
        splitViewController.viewControllers = [menuNavController,profileNavController]
        splitViewController.modalPresentationStyle = .fullScreen
        splitViewController.delegate = self
        
        present(splitViewController, animated: true, completion: nil)
        
    }
    
    
    @IBAction func Dashboard_Tapped(_ sender: Any) {
       print ("dashboard tapped")
        let menuVC = MenuViewController()
        let menuNavController = UINavigationController(rootViewController: menuVC)

        let dashVC = DashboardViewController()
        let profileNavController = UINavigationController(rootViewController: dashVC)

        let splitViewController = UISplitViewController()
        splitViewController.viewControllers = [menuNavController,profileNavController]
        splitViewController.modalPresentationStyle = .fullScreen
        splitViewController.delegate = self

        present(splitViewController, animated: true, completion: nil)

    }


    @IBAction func Messages_Tapped(_ sender: Any) {
        print("messages tapped")
        let menuVC = MenuViewController()
        let menuNavController = UINavigationController(rootViewController: menuVC)

        let msgVC = MessagesViewController()
        let profileNavController = UINavigationController(rootViewController: msgVC)

        let splitViewController = UISplitViewController()
        splitViewController.viewControllers = [menuNavController,profileNavController]
        splitViewController.modalPresentationStyle = .fullScreen
        splitViewController.delegate = self

        present(splitViewController, animated: true, completion: nil)
    }
    
  
}
