//
//  VirtualProxy.swift
//  VirtualProxy
//
//  Created by Artem Kislitsyn on 15.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

protocol HEVSuitMedicalAid {
	func administerMorphine() -> String
}

class HEVSuit : HEVSuitMedicalAid {
	func administerMorphine() -> String {
		return "Morphine administered."
	}
}

class HEVSuitHumanInterface : HEVSuitMedicalAid {
	lazy private var physicalSuit: HEVSuit = HEVSuit()
	
	func administerMorphine() -> String {
		return physicalSuit.administerMorphine()
	}
}
