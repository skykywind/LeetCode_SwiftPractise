//
//  TwoSum.swift
//  LeetCode_SwiftPractise
//
//  Created by 贾富佳 on 2019/6/8.
//  Copyright © 2019 Skywind_Jia. All rights reserved.
//

import Foundation

/**
    Description:
    Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 
**/

/// Solution-1: Brute Force
/// - Complexity:
///   - Time complexity: O(n²)
///   - Space complexity: O(1)
/// - Note:
/// - Parameters:
///   - nums: Given nums.
///   - target: Given Target.
/// - Returns: Two numbers subscript in nums or empty result.
func twoSumBruteForce(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in (i+1)..<nums.count {
            if nums[j] == target - nums[i] {
                return [i, j]
            }
        }
    }
    return []
}

/// Two-Pass Hash表法
/// - Complexity:
///   - Time complexity: O(n)
///   - Space complexity: O(n)
/// - Note:
/// - Parameters:
///   - nums: Given nums.
///   - target: Given Target.
/// - Returns: Two numbers subscript in nums or empty result
func twoSumTwoPassHashTable(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    for i in 0..<nums.count {
        dict[nums[i]] = i
    }
    for j in 0..<nums.count {
        let n = nums[j]
        if dict.keys.contains(target-n) && j != dict[target-n] {
            return [j, dict[target-n]!]
        }
    }
    return []
}

/// One-Pass Hash表法
/// - Complexity:
///   - Time complexity: O(n)
///   - Space complexity: O(n)
/// - Note:
/// - Parameters:
///   - nums: Given nums.
///   - target: Given Target.
/// - Returns: Two numbers subscript in nums or empty result
func twoSumOnePassHashTable(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    for i in 0..<nums.count {
        let n = target - nums[i]
        if dict.keys.contains(n) {
            return [dict[n]!, i]
        }
        dict[nums[i]] = i
    }
    return []
}

