//
//  MinHeap.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/17/23.
//

class MinHeap {
    var elements: [Int] = []
    
    init(elements: [Int]) {
        self.elements = elements
    }
    
    func parent(i: Int) -> Int {
        return (i - 1) / 2
    }
    
    func left(i: Int) -> Int {
        return 2 * i + 1
    }
    
    func right(i: Int) -> Int {
        return 2 * i + 2
    }
    
    func size() -> Int {
        return elements.count
    }
    
    func minHeapify(i: Int) {
        let l = left(i: i)
        let r = right(i: i)
        var min: Int
        if l < elements.count && elements[l] < elements[i] {
            min = l
        } else {
            min = i
        }
        if r < elements.count && elements[r] < elements[min] {
            min = r
        }
        if min != i {
            let tmp = elements[i]
            elements[i] = elements[min]
            elements[min] = tmp
            minHeapify(i: min)
        }
    }
    
    func buildHeap() {
        for i in (0...elements.count/2).reversed() {
            minHeapify(i: i)
        }
    }
    
    func extractMin() -> Int? {
        guard elements.count > 0 else { return nil }
        let min = elements[0]
        elements[0] = elements[elements.count - 1]
        elements.remove(at: elements.count - 1)
        minHeapify(i: 0)
        return min
    }
    
    func insert(val: Int) {
        elements.append(val)
        var i = elements.count - 1
        while(i > 1 && elements[parent(i: i)] > elements[i]) {
            let tmp = elements[i]
            elements[i] = elements[parent(i: i)]
            elements[parent(i: i)] = tmp
            i = parent(i: i)
        }
    }
}
