//
//  SplashViewController.swift
//  Hausaufgaben1monat6
//
//  Created by Maksat Edil on 6/1/24.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let sessionDate = UserSessionManager.shared.getSession(),
        sessionDate < Date() {
            let vc = InfoViewController()
            present(vc, animated: true)
        } else {
            let vc = UserAutorizationViewController()
            present(vc, animated: true)
            UserSessionManager.shared.deleteSession()
        }
    }

}
