//
//  Config.swift
//  Currencies
//
//  Created by Beat Besmer on 11.12.16.
//  Copyright © 2016 b-labs. All rights reserved.
//

import Foundation
import UIKit

struct Config{
    static let baseCurrency = "CHF"
    static let serviceURL = "https://api.fixer.io/latest?base=\(baseCurrency)"

    static let currencyNamesURL = "https://openexchangerates.org/api/currencies.json"
    static let highlightColor =  UIColor(hue: 0.56, saturation: 0.05, brightness: 1, alpha: 1)
}
