//
//  main.swift
//  MultiThread
//
//  Created by Tian Tong on 2019/9/17.
//  Copyright © 2019 TTDP. All rights reserved.
//

import Foundation

var isGCD = true

if isGCD {
    runGCD()
} else {
    runOperation()
}
