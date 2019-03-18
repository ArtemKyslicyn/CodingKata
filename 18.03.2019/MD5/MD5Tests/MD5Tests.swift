//
//  MD5Tests.swift
//  MD5Tests
//
//  Created by Artem Kislitsyn on 18.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import MD5

class MD5Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMd5() {
		
		//arrange
		let message = "message digest"
		
		//act
		let result = toHexString(bytes: md5(message:Array(message.utf8)))
		
		//assert
		XCTAssertEqual("f96b697d7cb7938d525a2f31aaf161d0",result, "not equal")
	
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
