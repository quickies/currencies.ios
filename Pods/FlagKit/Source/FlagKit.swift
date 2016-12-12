//
//  UIImage+FlagKit.swift
//  FlagKit
//
//  Created by Simon Blommegård on 22/09/15.
//  Copyright © 2015 Bowtie. All rights reserved.
//

import Foundation

public class FlagKit {
  public enum SpecialFlag: String {
    case world = "WW"
    case europeanUnion = "EU"
    case northAmerica = "WW-NAM"
    case southAmerica = "WW-SAM"
    case europe = "WW-EUR"
    case africa = "WW-AFR"
    case asia = "WW-ASI"
    case oceania = "WW-AUS"
    case california = "US-CA"
    case skåne = "SE-SKA"
    case england = "GB-ENG"
    case scotland = "GB-SCT"
    case wales = "GB-WLS"
    case pride = "LGBT"
  }

  public class var assetBundle: Bundle {
    get {
      return Bundle(for: FlagKit.self)
    }
  }
}
