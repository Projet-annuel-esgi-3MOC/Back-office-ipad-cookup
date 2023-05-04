import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
      
        
        // Configure la vue principale de l'application
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = MenuViewController()
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }
}
