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

    static let currencyNamesURL = "https://gist.githubusercontent.com/Fluidbyte/2973986/raw/b0d1722b04b0a737aade2ce6e055263625a0b435/Common-Currency.json"
    static let highlightColor =  UIColor(hue: 0.56, saturation: 0.05, brightness: 1, alpha: 1)
}
