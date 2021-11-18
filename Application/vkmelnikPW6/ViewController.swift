//
//  ViewController.swift
//  vkmelnikPW6
//
//  Created by Vsevolod Melnik on 18.11.2021.
//

import UIKit
import MyLogger1
import MyLogger2
import MyLogger3

class ViewController: UIViewController {
    
    var frameworkButton: UIButton?
    var swiftPackageButton: UIButton?
    var podButton: UIButton?
    var carthageButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    @objc func frameworkButtonPressed(_ sender: Any) {
        MyLogger1.log("hello, world")
    }
    
    @objc func swiftPackageButtonPressed() {
        MyLogger2.log("hello, world")
    }
    
    @objc func podButtonPressed() {
        MyLogger3.log("hello, world")
    }
    
    @objc func carthageButtonPressed() {
        
    }
    
    private func setupFrameworkButton() {
        let button = UIButton()
        button.setHeight(to: 30)
        button.setWidth(to: 200)
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Log (framework)", for: .normal)
        button.addTarget(self, action: #selector(frameworkButtonPressed), for: .touchUpInside)
        view.addSubview(button)
        button.pinCenter(to: view.centerXAnchor)
        button.pinBottom(to: swiftPackageButton!.topAnchor, 10)
        self.frameworkButton = button
    }
    
    private func setupSwiftPackageButton() {
        let button = UIButton()
        button.setHeight(to: 30)
        button.setWidth(to: 200)
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Log (swift package)", for: .normal)
        button.addTarget(self, action: #selector(swiftPackageButtonPressed), for: .touchUpInside)
        view.addSubview(button)
        button.pinCenter(to: view)
        self.swiftPackageButton = button
    }
    
    private func setupPodButton() {
        let button = UIButton()
        button.setHeight(to: 30)
        button.setWidth(to: 200)
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Log (pod)", for: .normal)
        button.addTarget(self, action: #selector(podButtonPressed), for: .touchUpInside)
        view.addSubview(button)
        button.pinCenter(to: view.centerXAnchor)
        button.pinTop(to: swiftPackageButton!.bottomAnchor, 10)
        self.podButton = button
    }
    
    private func setupCarthageButton() {
        let button = UIButton()
        button.setHeight(to: 30)
        button.setWidth(to: 200)
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Log (carthage)", for: .normal)
        button.addTarget(self, action: #selector(carthageButtonPressed), for: .touchUpInside)
        view.addSubview(button)
        button.pinCenter(to: view.centerXAnchor)
        button.pinTop(to: podButton!.bottomAnchor, 10)
        self.carthageButton = button
    }

    private func setupView() {
        view.backgroundColor = .white
        setupSwiftPackageButton()
        setupFrameworkButton()
        setupPodButton()
        setupCarthageButton()
    }

}

