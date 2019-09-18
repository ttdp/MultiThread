//
//  Queue.swift
//  MultiThread
//
//  Created by Tian Tong on 2019/9/18.
//  Copyright © 2019 TTDP. All rights reserved.
//

import Foundation

func runQueue() {
    let queue = OperationQueue()
    queue.maxConcurrentOperationCount = 2
    
    let operation1 = BlockOperation {
        print("Operation 1")
    }
    
    operation1.completionBlock = {
        print("Operation 1 completed")
    }
    
    let operation2 = BlockOperation {
        print("Operation 2")
    }
    
    operation2.completionBlock = {
        print("Operation 2 completed")
    }
    
    let operation3 = BlockOperation {
        print("Operation 3")
    }
    
    operation3.completionBlock = {
        print("Done")
    }
    
    operation3.addDependency(operation2)
    operation3.addDependency(operation2)
    
    queue.addOperation(operation1)
    queue.addOperation(operation2)
    queue.addOperation(operation3)
}
