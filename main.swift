import Foundation

let unsortedStrings = ["Hello", "World", "Swift", "Runtime"]


func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp: Int
    temp = strings[secondIndex]
    strings[secondIndex] = strings[firstIndex]
    strings[firstIndex] = temp
}

var unsortedArray = unsortedStrings
var tempCount = 0
var totalCount = 0
var functionInvoke: Bool = true
print("Pass: \(0), Swaps: \(tempCount)/\(totalCount), Array: \(unsortedArray)")

while (functionInvoke) {
    for x in (0 ..< unsortedArray.count) {
        for y in (1 ..< unsortedArray.count - x) {
            if(unsortedArray[y] < unsortedArray[y - 1]) {
                functionInvoke = true
                swap(strings: &unsortedArray, firstIndex: y, secondIndex: y - 1)
                tempCount += 1
                totalCount += 1
            }
        }
        print("Pass: \(x + 1), Swaps: \(tempCount)/\(totalCount), Array: \(unsortedArray)") 

        if(tempCount == 0) {
            functionInvoke = false
            break
        }
        tempCount = 0

    }
}
