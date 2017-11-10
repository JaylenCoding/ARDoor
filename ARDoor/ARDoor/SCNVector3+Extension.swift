//
//  SCNVector3+Extension.swift
//  ARDoor
//
//  Created by Minecode on 2017/11/9.
//  Copyright © 2017年 Minecode. All rights reserved.
//

import Foundation
import ARKit

extension SCNVector3 {
    
    init (withHitTestResult result: ARHitTestResult) {
        let transform = result.worldTransform
        
        self.init(withTransform: transform)
    }
    
    init (withTransform transform: matrix_float4x4) {
        self.x = transform.columns.3.x
        self.y = transform.columns.3.y
        self.z = transform.columns.3.z
    }
    
    init (withNode node: SCNNode) {
        let transform = node.transform
        let orientation = SCNVector3(-transform.m31, -transform.m32, -transform.m33)
        let location = SCNVector3(transform.m41, transform.m42, transform.m43)
        let currentPosition = orientation + location
        
        self = currentPosition
    }
    
    static func +(left: SCNVector3, right: SCNVector3) -> SCNVector3 {
        return SCNVector3(left.x+right.x, left.y+right.y, left.z+right.z)
    }
    
}

