//
//  ViewController.swift
//  UIKitViewControllerPractice
//
//  Created by Fernando Negrete Pimentel on 25/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    deinit {
        print("eliminado")
    }
    
    private lazy var swiftButton : UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Cambia"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] action in
            //self?.presentCurrentViewController()
            self?.changeConstraintValue()
        }))
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = configuration
        return button
    }()
    
    var buttonConstraint: NSLayoutConstraint?
    
    func presentCurrentViewController(){
        self.present(ViewController(), animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("1. ViewDidLoad \(self.description)")
        
        view.backgroundColor = [
            .systemRed,
            .systemBlue,
            .systemCyan,
            .systemMint,
            .systemGray,
            .systemBrown
        ].randomElement()
        view.addSubview(swiftButton)
        
        buttonConstraint = swiftButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        NSLayoutConstraint.activate([
            swiftButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonConstraint!
        ])
    }
    
    func changeConstraintValue() {
        view.removeConstraint(buttonConstraint!)
        buttonConstraint = swiftButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100)
        NSLayoutConstraint.activate([
            swiftButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonConstraint!
        ])
        
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

