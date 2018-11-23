//
//  TemplateTests.swift
//  TemplateTests
//
//  Created by Artem Kislitsyn on 23.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Template

class TemplateTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testTemplateHtmlGenerator() {
		
		//arrange
		let htmlGen : ICodeGenerator = CodeGenerator(delegate: HTMLGeneratorPhases())
		
		
		
		
		
		//act
		htmlGen.crossCompile()
		
		
		//assert
		XCTAssertEqual(TestLoger.sharedInstance.logs,["fetchDataforGeneration invoked", "HTMLGeneratorPhases collectSource() executed", "HTMLGeneratorPhases crossCompile() executed"])
		
	}
	
	
	func testTemplateJSONGenerator() {
		
		//arrange
		let jsonGen: ICodeGenerator = CodeGenerator(delegate: JSONGeneratorPhases())
		
		
		
		
		//act
		jsonGen.crossCompile()
		
		//assert
		XCTAssertEqual(TestLoger.sharedInstance.logs,["fetchDataforGeneration invoked", "JSONGeneratorPhases collectSource() executed", "JSONGeneratorPhases crossCompile() executed"])
		
	}

}
