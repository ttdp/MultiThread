//
//  Operation.swift
//  MultiThread
//
//  Created by Tian Tong on 2019/9/17.
//  Copyright © 2019 TTDP. All rights reserved.
//

import Foundation

var emails: [String] = []
func runOperation() {
    let operation = BlockOperation()
    
    operation.addExecutionBlock {
        NetworkUtility.getEmail("https://reqres.in/api/users/2") { email in
            if let email = email {
                emails.append(email)
            }
        }
    }
    
    operation.addExecutionBlock {
        NetworkUtility.getEmail("https://reqres.in/api/users/3") { email in
            if let email = email {
                emails.append(email)
            }
        }
    }
    
    operation.addExecutionBlock {
        NetworkUtility.getEmail("https://reqres.in/api/users/4") { email in
            if let email = email {
                emails.append(email)
            }
        }
    }
    
    operation.addExecutionBlock {
        NetworkUtility.getEmail("https://reqres.in/api/users/5") { email in
            if let email = email {
                emails.append(email)
            }
        }
    }
    
    operation.addExecutionBlock {
        NetworkUtility.getEmail("https://reqres.in/api/users/6") { email in
            if let email = email {
                emails.append(email)
            }
        }
    }
    
    operation.addExecutionBlock {
        NetworkUtility.getEmail("https://reqres.in/api/users/7") { email in
            if let email = email {
                emails.append(email)
            }
        }
    }
    
    operation.completionBlock = {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            print("We got 6 emails:")
            emails.forEach { print($0) }
        }
    }
    
    let queue = OperationQueue()
    queue.addOperation(operation)
}
