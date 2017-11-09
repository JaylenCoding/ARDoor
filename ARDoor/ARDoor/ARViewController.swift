//
//  ARViewController.swift
//  ARDoor
//
//  Created by Minecode on 2017/11/9.
//  Copyright © 2017年 Minecode. All rights reserved.
//

import UIKit
import ARKit

class ARViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    @IBOutlet weak var addButton: UIButton!
    
    let configuration = ARWorldTrackingConfiguration()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.session.run(configuration)
        sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
//        sceneView.showsStatistics = true
        sceneView.delegate = self
    }
    
    @IBAction func addAction(_ sender: Any) {
        
    }
    
    
}

// MARK: - ARSCNViewDelegate implemention
extension ARViewController: ARSCNViewDelegate {
    
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        guard anchor is ARPlaneAnchor else {return}
        
        
        
    }
    
}
