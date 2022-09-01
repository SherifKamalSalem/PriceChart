//
//  AlgorithmSearch.swift
//  PriceChart
//
//  Created by Sherif Kamal on 26/08/2022.
//

import Foundation

class AlgorithmSearch {
    class func nearestNeighbor<T: BinaryFloatingPoint>(_ array: Array<T>, searchItem: T) -> Int {
        var lowerIndex = 0;
        var upperIndex = array.count - 1
        
        if searchItem <= array[0] {
            return lowerIndex
        } else if searchItem >= array[array.count - 1] {
            return upperIndex
        }
        
        if array.count == 2 {
            return searchItem < (array[0] + array[array.count - 1] )/2 ? 0 : 1
        }
        
        while (true) {
            let currentIndex = (lowerIndex + upperIndex)/2
            if array[currentIndex] == searchItem {
                return currentIndex
            } else if currentIndex > 0, currentIndex < array.count - 1, array[currentIndex - 1] < searchItem, searchItem < array[currentIndex + 1] {
                if searchItem < (array[currentIndex] + array[currentIndex - 1] )/2 {
                    return currentIndex - 1
                } else if searchItem > (array[currentIndex] + array[currentIndex + 1] )/2 {
                    return currentIndex + 1
                } else {
                    return currentIndex
                }
            } else {
                if array[currentIndex] > searchItem {
                    upperIndex = currentIndex - 1
                } else {
                    lowerIndex = currentIndex + 1
                }
            }
        }
    }
}
