//
//  SettingsController.swift
//  SlideMenuTutorial
//
//  Created by Ngo Dang tan on 10/2/20.
//

import UIKit
class SettingsController: UIViewController {
    
    // MARK: - Properties
    var username:String?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        if let username = username {
            print("Username is \(username)")
        }else{
            print("Username not found ...")
        }
    }
    // MARK: - Selectors
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Helpers
    
    func configureUI(){
        view.backgroundColor = .white
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = .darkGray
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "close_ic").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))

    }
    

}
