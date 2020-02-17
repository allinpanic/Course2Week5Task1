//
//  ViewController.swift
//  Course2Week5Task1
//
//  Created by iMac on 15.02.2020.
//  Copyright © 2020 Valentina Rodionova. All rights reserved.
//

import UIKit

class SimpleAppViewController: UIViewController {

  @IBOutlet weak var launchTimeLabel: UILabel!
  @IBOutlet weak var appearanceTimeLabel: UILabel!
  @IBOutlet weak var updateBarButton: UIBarButtonItem!
  
  override func loadView() {
    super.loadView()
   let launchingTime = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .medium
    launchTimeLabel.text = dateFormatter.string(from: launchingTime)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    let appearanceTime = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .medium
    appearanceTimeLabel.text = dateFormatter.string(from: appearanceTime)
  }
  
  @IBAction func updateBarButtonPressed(_ sender: Any) {
    self.viewWillAppear(true)
  }
}

