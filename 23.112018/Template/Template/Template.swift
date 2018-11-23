//
//  Template.swift
//  Template
//
//  Created by Artem Kislitsyn on 23.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

//ONLY FOR TESTING
class TestLoger {
	public var logs = [String]()
	static let sharedInstance = TestLoger()
	
	public func addLog(string:String)  {
		logs.append(string)
	}
	public func clear()  {
		logs.removeAll()
	}
	
	private init() {
		// Private initialization to ensure just one instance is created.
	}
}

protocol ICodeGenerator {
	func crossCompile()
}

protocol IGeneratorPhases {
	func collectSource()
	func crossCompile()
}

class CodeGenerator : ICodeGenerator{
	var delegate: IGeneratorPhases
	
	init(delegate: IGeneratorPhases) {
		self.delegate = delegate
	}
	
	private func fetchDataforGeneration(){
		//common implementation
		print("fetchDataforGeneration invoked")
		TestLoger.sharedInstance.addLog(string: "fetchDataforGeneration invoked")
		
	}
	
	//Template method
	final func crossCompile() {
		fetchDataforGeneration()
		delegate.collectSource()
		delegate.crossCompile()
	}
	
}

class HTMLGeneratorPhases : IGeneratorPhases {
	func collectSource() {
		print("HTMLGeneratorPhases collectSource() executed")
		TestLoger.sharedInstance.addLog(string: "HTMLGeneratorPhases collectSource() executed")
	}
	
	func crossCompile() {
		print("HTMLGeneratorPhases crossCompile() executed")
		TestLoger.sharedInstance.addLog(string: "HTMLGeneratorPhases crossCompile() executed")
	}
}

class JSONGeneratorPhases : IGeneratorPhases {
	func collectSource() {
		print("JSONGeneratorPhases collectSource() executed")
		TestLoger.sharedInstance.addLog(string: "JSONGeneratorPhases collectSource() executed")
	}
	
	func crossCompile() {
		print("JSONGeneratorPhases crossCompile() executed")
		TestLoger.sharedInstance.addLog(string: "JSONGeneratorPhases crossCompile() executed")
	}
}
