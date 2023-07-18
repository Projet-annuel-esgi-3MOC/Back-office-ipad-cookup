import UIKit

class LoginViewController: UIViewController, UISplitViewControllerDelegate {
    @IBOutlet weak var Username_textfield: UITextField!
    @IBOutlet var Password_textfield: UIView!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var LeftView: UIView!
    @IBOutlet weak var BackView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Edit Button
        LoginButton.layer.cornerRadius = 20
        
        // Edit Textfield
        Username_textfield.layer.cornerRadius = 20
        
        // Edit LeftView
        LeftView.layer.borderColor = UIColor.green.cgColor
        LeftView.layer.cornerRadius = 20
        
        // Edit BackView
        BackView.layer.borderColor = UIColor.green.cgColor
        BackView.layer.cornerRadius = 20
    }
    
    @IBAction func Login_Tapped(_ sender: Any) {
        print("Login Tapped")
        
        let menuVC = MenuViewController()
        let menuNavController = UINavigationController(rootViewController: menuVC)
        
        let profileVC = ProfileViewController()
        let profileNavController = UINavigationController(rootViewController: profileVC)
        
        let splitViewController = UISplitViewController()
        splitViewController.viewControllers = [menuNavController,profileNavController]
        
        // Set delegate to self
        splitViewController.delegate = self
        
        // Set preferred display mode
        splitViewController.preferredDisplayMode = UISplitViewController.DisplayMode.oneBesideSecondary
        
        // Set maximum primary column width
        splitViewController.maximumPrimaryColumnWidth = UIScreen.main.bounds.width * 0.5
        
        // Set minimum primary column width
        splitViewController.minimumPrimaryColumnWidth = UIScreen.main.bounds.width * 0.3
        
        // Set primary view controller
        splitViewController.preferredPrimaryColumnWidthFraction = 0.3
        
        // Set modal presentation style
        splitViewController.modalPresentationStyle = .fullScreen
        
        // Present split view controller
        present(splitViewController, animated: true, completion: nil)
    }
}
