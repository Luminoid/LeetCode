//
//  EncodeAndDecodeTinyURL.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/7/23.
//

import Foundation

//@main
private class Codec {
    // Time complexity: O(1)        in average, collision is rare
    // Space complexity: O(n)
    
    let alphabet = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var map: [String: String] = [:]
    
    func getRandomKey() -> String {
        var s = ""
        for _ in 0..<6 {
            if let symbol = alphabet.randomElement() {
                s += symbol
            }
        }
        return s
    }
    
    // Encodes a URL to a shortened URL.
    func encode(_ longUrl: String) -> String {
        var key = getRandomKey()
        while (map[key] != nil) {
            key = getRandomKey()
        }
        map[key] = longUrl
        return "http://tinyurl.com/" + key
    }
    
    // Decodes a shortened URL to its original URL.
    func decode(_ shortUrl: String) -> String {
        return map[String(shortUrl.suffix(6))] ?? ""
    }
    
    static func main() {
        let codec = Codec()
        let s1 = codec.encode("https://leetcode.com/problems/two-sum/")
        let s2 = codec.encode("https://leetcode.com/problems/add-two-numbers/")
        let s3 = codec.encode("https://leetcode.com/problems/longest-substring-without-repeating-characters/")
        let s4 = codec.encode("https://leetcode.com/problems/median-of-two-sorted-arrays/")
        let s5 = codec.encode("https://leetcode.com/problems/longest-palindromic-substring/")
        [s1, s2, s3, s4, s5].forEach {
            print($0)
            print(codec.decode($0))
        }
    }
}
