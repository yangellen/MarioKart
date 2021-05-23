//
//  ViewController.swift
//  MarioKart
//
//  Created by Ellen Yang on 5/21/21.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var kartView0: UIImageView!
   @IBOutlet weak var kartView1: UIImageView!
   @IBOutlet weak var kartView2: UIImageView!

   var startingPointKartView0 = CGPoint()
   var startingPointKartView1 = CGPoint()
   var startingPointKartView2 = CGPoint()

   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
      startingPointKartView0 = kartView0.center
      startingPointKartView1 = kartView1.center
      startingPointKartView2 = kartView2.center
      
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

   //user can long press the background to reset the karts
   @IBAction func onLongPress(_ sender: UILongPressGestureRecognizer) {

      UIView.animate(withDuration: 0.8) {
         self.kartView0.center = self.startingPointKartView0
         self.kartView1.center = self.startingPointKartView1
         self.kartView2.center = self.startingPointKartView2

         self.kartView0.transform = CGAffineTransform.identity
         self.kartView1.transform = CGAffineTransform.identity
         self.kartView2.transform = CGAffineTransform.identity

      }
   }

}

