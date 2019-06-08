//
//  TwoSumUnitTest.swift
//  LeetCode_SwiftPractiseTests
//
//  Created by 贾富佳 on 2019/6/8.
//  Copyright © 2019 Skywind_Jia. All rights reserved.
//

import XCTest
@testable import LeetCode_SwiftPractise

class TwoSumUnitTest: XCTestCase {
    
    let nums = [2,7,11,15,16]
    let target = 31
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSumBruteForce() {
        XCTAssertEqual(twoSumBruteForce(nums, target), [3, 4])
    }
    func testTwoPassHashTable() {
        XCTAssertEqual(twoSumTwoPassHashTable(nums, target), [3, 4])
    }
    func testOnPassHashTable() {
        XCTAssertEqual(twoSumOnePassHashTable(nums, target), [3, 4])
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            testSumBruteForce()
            testTwoPassHashTable()
            testOnPassHashTable()
        }
    }

}
