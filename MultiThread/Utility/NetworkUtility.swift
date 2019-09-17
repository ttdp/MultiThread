//
//  NetworkUtility.swift
//  MultiThread
//
//  Created by Tian Tong on 2019/9/17.
//  Copyright © 2019 TTDP. All rights reserved.
//

import Foundation

struct NetworkUtility {
    
    static let session = URLSession.shared
    
    static func getEmail(_ path: String, completion: @escaping (String?) -> Void) {
        session.dataTask(with: URL(string: path)!) { data, response, error in
            guard let data = data else {
                completion(nil)
                return
            }
            
            if let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any], let user = json["data"] as? [String: Any] {
                completion(user["email"] as? String)
            }
        }.resume()
    }
    
}
