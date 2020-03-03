let capital = ["KR": "Seoul", "CN": "Beijing", "JP": "Tokyo"]
capital["ko"]
let num = Int("123")

var optInt: Int?
optInt = 3
print("옵셔널 자체의 값 : \(optInt)")
print("!로 강제 해제한 값 : \(optInt!)")

var optStr: String?
optStr = "Swift"

var optDouble: Double?

var optArr: [String]?
optArr = ["C", "JAVA", "Objective-C", "SmallTalk"]

var optDic: Dictionary<String, Int>?
var optDic2: [String: String]?
optDic = ["국어": 94, "수학": 88, "영어": 96]

var optClass: AnyObject?

var str = "Swift"

// 옵셔널 강제 해제
//var intFromStr = Int(str)
//
//if intFromStr != nil {
//    print("값이 변환되었습니다. 변환된 값은 \(intFromStr!)입니다.")
//} else {
//    print("값 변환에 실패하였습니다.")
//}

// 옵셔널 바인딩
//if let intFromStr = Int(str) {
//    print("값이 변환되었습니다. 변환된 값은 \(intFromStr!)입니다.")
//} else {
//    print("값 변환에 실패하였습니다.")
//}

// guard 구문 사용하여 옵셔널 바인딩
// guard 구문은 특성상 함수나 메소드에만 사용할 수 있음
//func intStr(str: String){
//    guard let intFromStr = Int(str) else {
//        print("값 변환에 실패하였습니다.")
//        return
//    }
//    
//    print("값이 변환되었습니다. 변환된 값은 \(intFromStr!)입니다.")
//}

let optInt2 = Int("123")

//if ((optInt2!) == 123) {
//    print("optInt2 == 123")
//} else {
//    print("optInt2 != 123")
//}

if (optInt2 == 123) {
    print("optInt2 == 123")
} else {
    print("optInt2 != 123")
}

var optValue01 = Optional(123)
var optValue02: Int? = 123

var str01: String! = "Swift Optional"
print(str01)
