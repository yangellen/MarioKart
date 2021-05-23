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

   //move kart to different location
   @IBAction func onPanGesture(_ panGesture: UIPanGestureRecognizer) {
      let location = panGesture.location(in: view)

     // print("Location: x: \(location.x), y: \(location.y)")

      let kartView = panGesture.view!
      kartView.center = location
   }

   //change kart to different size
   @IBAction func onPinchGesture(_ pinchGesture: UIPinchGestureRecognizer) {
      let scale = pinchGesture.scale
      //print("scale: \(scale)")
      let kartView = pinchGesture.view!
      kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
   }

   //rotate kart
   @IBAction func onRotationGesture(_ rotationGesture: UIRotationGestureRecognizer) {
      let rotation = rotationGesture.rotation
      //print("rotation: \(rotation)")
      let kartView = rotationGesture.view!
      kartView.transform = CGAffineTransform(rotationAngle: rotation)
   }
   
   //double tap a kart to make it race
   @IBAction func didTapGesture(_ tapGesture: UITapGestureRecognizer) {
      //print("Double tap recognized")
      let karView = tapGesture.view!

      UIView.animate(withDuration: 0.6) {
         karView.center.x += 400
         
      }
   }
}

