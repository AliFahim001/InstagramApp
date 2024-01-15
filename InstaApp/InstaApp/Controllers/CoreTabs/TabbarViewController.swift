//
//  TabbarViewController.swift
//  InstaApp
//
//  Created by Ali Fahim on 15/01/2024.
//

import UIKit

class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTabs()

    }
    
    private func setUpTabs(){
        
        let home = HomeViewController()
        let explore = ExploreViewController()
        let camera = CameraViewController()
        let notification = NotificationViewController()
        let profile = ProfileViewController()
        
        let nav1 = UINavigationController(rootViewController: home)
        let nav2 = UINavigationController(rootViewController: explore)
        let nav3 = UINavigationController(rootViewController: camera)
        let nav4 = UINavigationController(rootViewController: notification)
        let nav5 = UINavigationController(rootViewController: profile)
        
        nav1.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house"),
            tag: 1
        )
        
        nav2.tabBarItem = UITabBarItem(
            title: "Explore",
            image: UIImage(systemName: "magnifyingglass"),
            tag: 2
        )
        
        nav3.tabBarItem = UITabBarItem(
            title: "Camera",
            image: UIImage(systemName: "plus"),
            tag: 3
        )
        
        nav4.tabBarItem = UITabBarItem(
            title: "Notification",
            image: UIImage(systemName: "heart"),
            tag: 4
        )
        
        nav5.tabBarItem = UITabBarItem(
            title: "Profile",
            image: UIImage(systemName: "person"),
            tag: 5
        )
        
        for nav in [nav1, nav2, nav3, nav4, nav5] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4, nav5], animated: true)
    }
}
