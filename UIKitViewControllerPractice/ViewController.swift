//
//  ViewController.swift
//  UIKitViewControllerPractice
//
//  Created by Fernando Negrete Pimentel on 25/12/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("1. ViewDidLoad \(self.description)")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2 viewWillApper \(self.description)")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("3. viewCillLayoutSubViews \(self.description)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("3. viewDidLayoutSubViews \(self.description)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("5. viewDidAppear \(self.description)")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("6. viewWillDesappear \(self.description)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("7. viewDidDesappear \(self.description)")
    }

}

