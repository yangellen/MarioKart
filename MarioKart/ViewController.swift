//
//  ViewController.swift
//  MarioKart
//
//  Created by Ellen Yang on 5/21/21.
//

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }

   @IBAction func onPanGesture(_ panGesture: UIPanGestureRecognizer) {
      let location = panGesture.location(in: view)

      print("Location: x: \(location.x), y: \(location.y)")

      let kartView = panGesture.view!
      kartView.center = location
   }

}

