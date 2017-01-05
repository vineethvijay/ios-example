//
//  ContentProvider.swift
//  Example Project
//
//  Created by iYrke on 1/5/17.
//  Copyright © 2017 iYrke. All rights reserved.
//

import Foundation

struct ContentProvider {
    let welcomeMessage: String

    init(welcomeMessage: String, prefix: String = "EXAMPLE", suffix: String = "PROJECT") {
        self.welcomeMessage = "\(prefix) \(welcomeMessage) \(suffix)"
    }
}
