//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//-----purple box--------
    let purpleView: UIView = {
        let main = UIView()
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .purple
        return main
    }()
//----------------------
//-----red and orange box------
    let redView: UIView = {
        let main = UIView()
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .red
        return main
    }()
    
    let orangeRView: UIView = {
        let main = UIView()
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .orange
        return main
    }()
    
    let orangeLView: UIView = {
        let main = UIView()
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .orange
        return main
    }()
    
//---------------------
    //-----blue box--------
        let blueView: UIView = {
            let main = UIView()
            main.translatesAutoresizingMaskIntoConstraints = false
            main.backgroundColor = .blue
            return main
        }()
    
    let blueTopView: UIView = {
        let main = UIView()
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .blue
        return main
    }()
    let blueBottomView: UIView = {
        let main = UIView()
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .blue
        return main
    }()
    //----------------------
    //-----transparent box--------
        let transTopView: UIView = {
            let main = UIView()
            main.translatesAutoresizingMaskIntoConstraints = false
            main.backgroundColor = .black
            main.alpha = 0
            return main
        }()
    
    let transBottomView: UIView = {
        let main = UIView()
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .black
        main.alpha = 0
        return main
    }()
    //-----main box------
    
  let mainView: UIView = {
    let main = UIView()
    // important when setting contraints programmatically
    main.translatesAutoresizingMaskIntoConstraints = false
    main.backgroundColor = .green
    return main
  }()
//  ----------------------
  let squareButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Square", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
    return butt
  }()
  
  let portraitButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Portrait", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
    return butt
  }()
  
  let landScapeButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Landscape", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
    return butt
  }()
  
  var widthAnchor: NSLayoutConstraint?
  var heightAnchor: NSLayoutConstraint?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
    view.addSubview(purpleView)
    view.addSubview(redView)
    view.addSubview(orangeRView)
    view.addSubview(orangeLView)
    view.addSubview(blueView)
    view.addSubview(blueTopView)
    view.addSubview(blueBottomView)
    view.addSubview(transTopView)
    view.addSubview(transBottomView)
    
    setupLayout()
  }

  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
    widthAnchor?.isActive = true
    
    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
    heightAnchor?.isActive = true
    
//    -------purple box------------
    purpleView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20.0).isActive = true
    purpleView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20.0).isActive = true
    purpleView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.7).isActive = true
    purpleView.heightAnchor.constraint(equalToConstant: 50).isActive = true
//    ----------------------
    //    -------red box------------
        redView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20.0).isActive = true
    redView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20.0).isActive = true

    redView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    redView.widthAnchor.constraint(equalToConstant: 250).isActive = true
    //    ----------------------
    //    -------orange box------------
        orangeRView.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: -10.0).isActive = true
    orangeRView.topAnchor.constraint(equalTo: redView.topAnchor, constant: 10.0).isActive = true
    orangeRView.heightAnchor.constraint(equalToConstant: 30).isActive = true
    orangeRView.widthAnchor.constraint(equalToConstant: 70).isActive = true

    orangeLView.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: -90.0).isActive = true
orangeLView.topAnchor.constraint(equalTo: redView.topAnchor, constant: 10.0).isActive = true
orangeLView.heightAnchor.constraint(equalToConstant: 30).isActive = true
orangeLView.widthAnchor.constraint(equalToConstant: 150).isActive = true
    //    ----------------------
    //    -------blue box------------
    blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        blueView.widthAnchor.constraint(equalToConstant:  50).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    blueTopView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    blueTopView.centerYAnchor.constraint(equalTo: transTopView.centerYAnchor).isActive = true
        blueTopView.widthAnchor.constraint(equalToConstant:  50).isActive = true
        blueTopView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    blueBottomView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    blueBottomView.centerYAnchor.constraint(equalTo: transBottomView.centerYAnchor).isActive = true
        blueBottomView.widthAnchor.constraint(equalToConstant:  50).isActive = true
        blueBottomView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    //    ----------------------
    //    -------transparent box------------
    transTopView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    transTopView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 1.0, constant: 0).isActive = true
    transTopView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.5).isActive = true
    transTopView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0.0).isActive = true

    
    transBottomView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    transBottomView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 1.0, constant: 0).isActive = true
    transBottomView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.5).isActive = true
    transBottomView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0.0).isActive = true

    //    ----------------------
    
    
    
    
    let buttStackView = UIStackView(arrangedSubviews: [
      squareButton, portraitButton, landScapeButton])
    buttStackView.translatesAutoresizingMaskIntoConstraints = false
    buttStackView.axis = .horizontal
    buttStackView.alignment = .center
    buttStackView.distribution = .fillEqually
    
    view.addSubview(buttStackView)
    NSLayoutConstraint.activate([
      buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
      buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      buttStackView.heightAnchor.constraint(equalToConstant: 50),
      buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
      ])
  }

  @objc private func squareTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
    
  }
  
  @objc private func portraitTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
    
  }
  
  @objc private func landscapeTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
}

