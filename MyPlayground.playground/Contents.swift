// 튜플

let tupleValue: (String, Character, Int, Float, Bool) = ("a", "b", 1, 2.5, true)
let (a, b, c, d, e) = tupleValue
tupleValue.0
tupleValue.1
tupleValue.2
tupleValue.3
tupleValue.4
print(a)
print(b)
print(c + 2)
print(d * 2)
print(e)

var tpl01: (Int, Int) = (100, 200)
var tpl02: (Int, String, Int) = (100, "a", 200)
var tpl03: (Int, (String, String)) = (100, ("t", "v"))
var tpl04: (String) = ("sample string")

// 결과값으로 튜플을 반환하는 함수
func getTupleValue() -> (String, String, Int) {
    return("t", "v", 100)
}

let (aa, bb, _) = getTupleValue()
print(aa)
print(bb)

// 딕셔너리

var capital = ["KR": "Seoul", "EN": "London", "FR": "Paris"]
capital["KR"]
capital["EN"]
capital["FR"]

Dictionary<String, Int>()   // [String: Int]()
Dictionary<String, AnyObject>()     // [String: AnyObject]()

//var capital = Dictionary<String, String>()
//var capital = [String: String]()

capital = Dictionary()  // capital = [String: String]()

var newCapital = [String: String]()
newCapital["JP"] = "Tokyo"

if newCapital.isEmpty {
    print("띡셔너리가 비어 있는 상태입니다.")
} else {
    print("딕셔너리의 크기는 현재 \(newCapital.count)입니다.")
}

newCapital.updateValue("Seoul", forKey: "KR")
newCapital.updateValue("London", forKey: "EN")
newCapital.updateValue("Sapporo", forKey: "JP")
newCapital.updateValue("Ottawa", forKey: "CA")
newCapital.updateValue("Beijing", forKey: "CN")

newCapital["CN"] = nil
//newCapital.removeValue(forKey: "CA")

if let removedValue = newCapital.removeValue(forKey: "CA") {
    print("삭제된 값은 \(removedValue)입니다.")
} else {
    print("아무 것도 삭제되지 않았습니다.")
}

for row in newCapital {
    let (key, value) = row
    print("현재 데이터는 \(key): \(value)입니다")
}

for (key, value) in newCapital {
    print("현재 데이터는 \(key): \(value)입니다")
}
