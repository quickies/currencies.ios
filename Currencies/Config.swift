//
//  Config.swift
//  Currencies
//
//  Created by Beat Besmer on 11.12.16.
//  Copyright © 2016 b-labs. All rights reserved.
//

import Foundation

struct Config{
    static let baseCurrency = "CHF"
    static let serviceURL = "https://api.fixer.io/latest?base=\(baseCurrency)"
    
    // Array
    //    static let currencyNamesURL = "https://gist.githubusercontent.com/madnik/49937c83061d1bc0d064/raw/f14d9aa9392b332c9756e06b8d289b9379525e29/currencies.json"
    
    // Dictionary with currency codes
    static let currencyNamesURL = "https://gist.githubusercontent.com/Fluidbyte/2973986/raw/b0d1722b04b0a737aade2ce6e055263625a0b435/Common-Currency.json"
    
}
