//
//  TwoSum.swift
//  LeetCode_Swift
//
//  Created by BlackRainism on 2017/7/25.
//  Copyright © 2017年 BlackRainism. All rights reserved.
//

import Foundation

/**
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].

 */

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, i]
            }
            
            dict[num] = i
        }
        
        fatalError("No valid outputs")
    }
}
