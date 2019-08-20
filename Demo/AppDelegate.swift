import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let controller: UIViewController
        if UIDevice.current.userInterfaceIdiom == .pad {
            controller = ViewController(layoutDependencies: LayoutsContainerPad.shared)
        } else {
            controller = ViewController(layoutDependencies: LayoutsContainerPhone.shared)
        }
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
        
        return true
    }

}

