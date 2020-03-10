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
    // 데이터 타입이 Strinng으로 추론되는 것을 방지하기 위해 타입 어노테이션 선언
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

protocol Wheel {
    func spin()
    func hold()
}

class Bicycle: Wheel {
    var moveState = false
    
    func spin() {
        self.pedal()
    }
    
    func hold() {
        self.pullBreak()
    }
    
    func pedal() {
        self.moveState = true
    }
    
    func pullBreak() {
        self.moveState = false
    }
}

//let trans = Bicycle()
let trans: Wheel = Bicycle()

//trans.moveState
//trans.pedal()
//trans.pullBreak()
trans.spin()
trans.hold()

protocol A {
    func doA()
}

protocol B {
    func doB()
}

class Impl: A, B {
    func doA() {
    }
    
    func doB() {
    }
    
    func desc() -> String {
        return "Class instance method"
    }
}

var ipl: A & B = Impl()
ipl.doA()
ipl.doB()

protocol Person {
    var firstName: String { get set }
    var lastName: String { get set }
    var birthDate: Date { get set }
    var profession: String { get }
    
    init (firstName: String, lastName: String, birthDate: Date)
    
    func updatePerson(person: Person) -> Person {
        var newPerson: Person
        // person을 갱신하는 코드는 여기에 위치한다.
        return newPerson
    }
}

var personArray = [Person]()
var personnDict = [String: Person]()