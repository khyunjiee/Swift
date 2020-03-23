import Foundation

func printHello() {
    print("안녕하세요")
}

func sayHello() -> String {
    let returnValue = "안녕하세요"
    return returnValue
}

func printHelloWithName(name: String) {
    print("\(name)님, 안녕하세요.")
}

func sayHelloWithName(name: String) -> String {
    let returnValue = "\(name)님, 안녕하세요."
    return returnValue
}

func incrementBy(amount: Int, numberOfTimes: Int) {
    var count = 0
    count = amount * numberOfTimes
}

printHello()

let inputName = "홍길동"
printHelloWithName(name: inputName)

incrementBy(amount: 5, numberOfTimes: 2)

func times(x: Int, y: Int) -> Int {
    return (x * y)
}

// 함수의 이름만으로 호출한 구문
times(x: 5, y: 10)
// 함수의 식별자를 사용하여 호출한 구문
//times(x:y:)(5,10)

func getIndvInnfo() -> (Int, String) {
    let height = 180
    let name = "꼼꼼한 재은씨"
    
    return (height, name)
}

//func getUserInfo() -> (h: Int, g: Character, n: String) {
//    // 데이터 타입이 Strinng으로 추론되는 것을 방지하기 위해 타입 어노테이션 선언
//    let gender: Character = "M"
//    let height = 180
//    let name = "꼼꼼한 재은씨"
//
//    return (height, gender, name)
//}

//var uInfo = getUserInfo()
//uInfo.0
//uInfo.1
//uInfo.2
//
//var (a,b,c) = getUserInfo()
//a
//b
//c

typealias infoResult = (h: Int, g: Character, n: String)

func getUserInfo() -> infoResult {
    // 데이터 타입이 String으로 추론되는 것을 방지하기 위해 타입 어노테이션 선언
    let gender: Character = "M"
    let height = 180
    let name = "꼼꼼한 재은씨"
    
    return (height, gender, name)
}

var result = getUserInfo()
result.h
result.g
result.n
//result.0
//result.1
//result.2

func printHello(_ name: String, welcomeMessage msg: String) {
    print("\(name)님, \(msg)")
}

printHello("홍길동", welcomeMessage: "안녕하세요")

func avg(score: Int...) -> Double {
    var total = 0 // 점수합계
    for r in score { // 배열로 입력된 값들을 순회 탐색하면서 점수를 합산
        total += r
    }
    
    return Double(total) / Double(score.count)
}

print(avg(score: 10, 20, 30, 40))

// 기본값이 지정된 함수
func echo(message: String, newLine: Bool = true) {
    if newLine == true {
        print(message, true)
    } else {
        print(message, false)
    }
}

echo(message: "안녕하세요")
echo(message: "안녕하세요", newLine: true)
echo(message: "안녕하세요", newLine: false)

var cnt = 30

func autoIncrement(value: Int) -> Int {
    var value = value
    value += 1
    
    return value
}

print(autoIncrement(value: cnt)) // 함수 내부의 value 변수값 : 31
print(cnt) // 외부에서 정의된 cnt : 30

func foo(paramCount: inout Int) -> Int {
    paramCount += 1
    return paramCount
}

var count = 30
print(foo(paramCount: &count)) // 함수 내부의 paramCount 변수값 : 31
print(count) // 외부에서 정의된 count 변수값 : 31

func desc() -> String {
    return "this is desc()"
}

func pass() -> () -> String {
    return desc
}

let p = pass()
print(p())

func plus(a: Int, b: Int) -> Int {
    return a + b
}

func minus(a: Int, b: Int) -> Int {
    return a - b
}

func times(a: Int, b: Int) -> Int {
    return a * b
}

func divide(a: Int, b: Int) -> Int {
    guard b != 0 else {
        return 0
    }
    
    return a / b
}

func calc(_ operand: String) -> (Int, Int) -> Int {
    switch operand {
    case "+":
        return plus(a:b:)
    case "-":
        return minus(a:b:)
    case "*":
        return times(a:b:)
    case "/":
        return divide(a:b:)
    default:
        return plus(a:b:)
    }
}

let c = calc("+")
c(3,4)
let c2 = calc("-")
c2(3,4)
let c3 = calc("*")
c3(3,4)
let c4 = calc("/")
c4(3,4)

func incr(param: Int) -> Int {
    return param + 1
}

func broker(base: Int, function fn: (Int) -> Int) -> Int {
    return fn(base)
}

broker(base: 3, function: incr)

func successThrough() {
    print("연산 처리가 성공했습니다.")
}

func failThrough() {
    print("처리 과정에 오류가 발생하였습니다.")
}

func divide(base: Int, success sCallBack: () -> Void, fail fCallBack: () -> Void) -> Int {
    
    guard base != 0 else {
        fCallBack()
        return 0
    }
    
    defer {
        sCallBack()
    }
    return 100 / base
    
}

divide(base: 30, success: successThrough, fail: failThrough)

// 외부 함수
func outer(base: Int) -> String {
    // 내부 함수
    func inner(inc: Int) -> String {
        return "\(inc)를 반환합니다."
    }
    let result = inner(inc: base + 1)
    return result
}

outer(base: 3)

let f = { () -> Void in
    print("클로저가 실행됩니다.")
}
f()

//let cc = { (s1: Int, s2: String) -> Void in
//    print("s1: \(s1), s2: \(s2)")
//}
//cc(1, "closure")

({ (s1: Int, s2: String) -> Void in
    print("s1: \(s1), s2: \(s2)")
})(1, "closure")

var value = [1, 9, 5, 7, 3, 2]

//func order(s1: Int, s2: Int) -> Bool {
//    if s1 > s2 {
//        return true
//    } else {
//        return false
//    }
//}
//
//value.sort(by: order(s1:s2:))

//value.sort(by: {
//    (s1: Int, s2: Int) -> Bool in
//    if s1 > s2 {
//        return true
//    } else {
//        return false
//    }
//})

// 다양항 클로저 표현들
value.sort(by: {(s1: Int, s2: Int) -> Bool in return s1>s2})
value.sort(by: {(s1: Int, s2: Int) in return s1>s2})
value.sort(by: {s1, s2 in return s1>s2})
value.sort(by: {return $0 > $1})
value.sort(by: {$0 > $1})
value.sort(by: > )

func callback(fn: @escaping () -> Void) {
    let f = fn
    f()
}

callback {
    print("Closure가 실행되었습니다.")
}

func condition(stmt: @autoclosure () -> Bool) {
    if stmt() == true {
        print("결과가 참입니다.")
    } else {
        print("결과가 거짓입니다.")
    }
}

//condition(stmt: {
//    4 > 2
//})
//
//condition {
//    4 > 2
//}

condition(stmt: (4 > 2))

var arrs = [String]()

func addVars(fn: @autoclosure () -> Void) {
    // 배열 요소를 3개까지 추가하여 초기화
    arrs = Array(repeating: "", count: 3)
    // 인자값으로 전달된 클로저 실행
    fn()
}

addVars(fn: arrs.insert("KR", at: 1))
