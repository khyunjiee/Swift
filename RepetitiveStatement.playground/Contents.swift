for row in 1...5 {
    print(row)
}

for row in 1...9 {
    print("2 X \(row) = \(row * 2 )")
}

for year in 1940...2017 {
    print("\(year) 년도")
}

//var lang: String = "swift"
//for char in lang.characters {
//    print("개별 문자는 \(char)입니다.")
//}

let size = 5
let padChar = "0"
var keyword = "3"

for _ in 1...size {
    keyword = padChar + keyword
}

print("\(keyword)")

for i in 1..<10 {
    for j in 1..<10 {
        print("\(i) X \(j) = \(i * j)")
    }
}

var n = 2
while n < 1000 {
    n = n * 2
}
print("n = \(n)")

n = 1024

repeat {
    n = n * 2
}
while n < 1000

print("n = \(n)")
