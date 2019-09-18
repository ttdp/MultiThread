//
//  main.swift
//  MultiThread
//
//  Created by Tian Tong on 2019/9/17.
//  Copyright © 2019 TTDP. All rights reserved.
//

import Foundation

print("Start...")

var isGCD = false

if isGCD {
    runGCD()
} else {
    runOperation()
}

sleep(2)

print("End.")
