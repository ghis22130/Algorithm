import Foundation

let colors = ["black":[0,1],"brown":[1,10],"red":[2,100],"orange":[3,1000],"yellow":[4,10000],"green":[5,100000], "blue":[6,1000000], "violet":[7,10000000],"grey":[8,100000000],"white":[9,1000000000]]
var colorArray:[String] = []
for _ in 0..<3 {
    colorArray.append(readLine()!)
}
let firstColor = colorArray[0]
let secondColor = colorArray[1]
let thirdColor = colorArray[2]

print((colors[firstColor]![0]*10+colors[secondColor]![0])*colors[thirdColor]![1])
