//
//  Operation.swift
//  MultiThread
//
//  Created by Tian Tong on 2019/9/17.
//  Copyright © 2019 TTDP. All rights reserved.
//

import Foundation

func runOperation() {
    var emails: [String] = []
    
    let operation = BlockOperation {
        // This operation's callback will not be waited for completion,
        // because the network run on non-main queue.
        // It can't block the current thread.
        NetworkUtility.getEmail("https://reqres.in/api/users/1") { email in
            if let email = email {
                emails.append(email)
            }
        }
    }
    
    let operation2 = BlockOperation {
        emails.append("janet.weaver@reqres.in")
    }

    let operation3 = BlockOperation {
        emails.append("emma.wong@reqres.in")
    }
    
    let operation4 = BlockOperation {
        emails.append("eve.holt@reqres.in")
    }
    
    let operation5 = BlockOperation {
        emails.append("charles.morris@reqres.in")
    }
    
    let operation6 = BlockOperation {
        emails.append("tracey.ramos@reqres.in")
    }
    
    let operation7 = BlockOperation {
        emails.append("michael.lawson@reqres.in")
    }
    
    let queue = OperationQueue()
    queue.addOperation(operation2)
    queue.addOperation(operation3)
    queue.addOperation(operation4)
    queue.addOperation(operation5)
    queue.addOperation(operation6)
    queue.addOperation(operation7)
    queue.waitUntilAllOperationsAreFinished()
    
    print("We got 6 emails:")
    emails.forEach { print($0) }
}
