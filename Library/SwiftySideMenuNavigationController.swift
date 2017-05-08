//
//  RootNavigationViewController.swift
//  SwiftSideMenu
//


import UIKit

open class SwiftySideMenuNavigationController: UINavigationController, SwiftySideMenuProtocol {

    open var sideMenu : SwiftySideMenu?
    open var sideMenuAnimationType : SwiftySideMenuAnimation = .default


    // MARK: - Life cycle
    open override func viewDidLoad() {
        super.viewDidLoad()
    }

    public init( menuViewController: UIViewController, contentViewController: UIViewController?) {
        super.init(nibName: nil, bundle: nil)

        if (contentViewController != nil) {
            self.viewControllers = [contentViewController!]
        }

        sideMenu = SwiftySideMenu(sourceView: self.view, menuViewController: menuViewController, menuPosition:.left)
        view.bringSubview(toFront: navigationBar)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation
    open func setContentViewController(_ contentViewController: UIViewController) {
        self.sideMenu?.toggleMenu()
        switch sideMenuAnimationType {
        case .none:
            self.viewControllers = [contentViewController]
            break
        default:
            contentViewController.navigationItem.hidesBackButton = true
            self.setViewControllers([contentViewController], animated: true)
            break
        }

    }

}
