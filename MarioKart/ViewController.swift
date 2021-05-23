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

     // print("Location: x: \(location.x), y: \(location.y)")

      let kartView = panGesture.view!
      kartView.center = location
   }

   @IBAction func onPinchGesture(_ pinchGesture: UIPinchGestureRecognizer) {
      let scale = pinchGesture.scale
      print("scale: \(scale)")
      let kartView = pinchGesture.view!
      kartView.transform = CGAffineTransform(scaleX: scale, y: scale)

   }
}

