import CJPAdController

InitializeViewController(window: UIWindow?, adMobUnitID: String, viewController: UIViewController) {
    let sharedInstance = CJPAdController.sharedInstance()
    sharedInstance.adNetworks = [CJPAdNetwork.NetworkAdMob.rawValue]
    sharedInstance.adPosition = CJPAdPosition.Bottom
    sharedInstance.initialDelay = 2.0
    // AdMob specific
    sharedInstance.adMobUnitID = adMobUnitID
    sharedInstance.useAdMobSmartSize = true
    sharedInstance.overrideIsNavController = !(viewController is UINavigationController) && !(viewController is UITabBarController)

    // Start CJPAdController serving ads in the nav controller
    sharedInstance.startWithViewController(viewController)

    // set the ad controller as the root view controller
    if window != nil {
        window!.rootViewController = sharedInstance
        window!.makeKeyAndVisible()
    }
}
