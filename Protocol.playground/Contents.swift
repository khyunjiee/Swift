import Foundation

protocol NewMethodProtocol {
    mutating func execute(cmd command: String, desc: String)
    func showPort(p: Int, memo desc: String) -> String
}

struct RubyNewService: NewMethodProtocol {
    func execute(cmd command: String, desc: String) {
        if command == "start" {
            print("\(desc)를 실행합니다.")
        }
    }
    
    func showPort(p: Int, memo desc: String) -> String {
        return "Port: \(p), Memo: \(desc)"
    }
}

struct RubyNewService2: NewMethodProtocol {
    func execute(cmd comm: String, desc d: String) {
        if comm == "start" {
            print("\(d)를 실행합니다.")
        }
    }
    
    func showPort(p: Int, memo description: String) -> String {
        return "Port: \(p), Memo: \(description)"
    }
}

protocol MService {
    mutating func execute(cmd: String)
    func showPort(p: Int) -> String
}

struct RubyMService: MService {
    var paramCommand: String?
    
    mutating func execute(cmd: String) {
        self.paramCommand = cmd
        if cmd == "start" {
            print("실행합니다")
        }
    }
    
    func showPort(p: Int) -> String {
        return "Port: \(p), now command: \(self.paramCommand!)"
    }
}

struct RubyMService2: MService {
    var paramCommand: String?
    
    func execute(cmd: String) {
        if cmd == "start" {
            print("실행합니다")
        }
    }
    
    func showPort(p: Int) -> String {
        return "Port: \(p), now command: \(self.paramCommand!)"
    }
}

class RubyThread: MService {
    var paramCommand: String?
    
    func execute(cmd: String) {
        self.paramCommand = cmd
        if cmd == "start" {
            print("실행합니다")
        }
    }
    
    func showPort(p: Int) -> String {
        return "Port: \(p), now command: \(self.paramCommand!)"
    }
}

protocol SomeTypeProperty {
    static var defaultValue: String { get set }
    static func getDefaultValue() -> String
}

struct TypeStruct: SomeTypeProperty {
    static var defaultValue = "default"
    
    static func getDefaultValue() -> String {
        return defaultValue
    }
}

class ValueObject: SomeTypeProperty {
    static var defaultValue = "default"
    
    class func getDefaultValue() -> String {
        return defaultValue
    }
}

protocol SomeInitProtocol {
    init()
    init(cmd: String)
}

struct SInit: SomeInitProtocol {
    var cmd: String
    
    init() {
        self.cmd = "start"
    }
    
    init(cmd: String) {
        self.cmd = cmd
    }
}

class CInit: SomeInitProtocol {
    var cmd: String
    
    required init() {
        self.cmd = "start"
    }
    
    required init(cmd: String) {
        self.cmd = cmd
    }
}

protocol Init {
    init()
}

class Parent {
    init() {
    }
}

class Child: Parent, Init {
    override required init() {
    }
}

struct MultiImplement: NewMethodProtocol, SomeInitProtocol {
    var cmd: String
    
    init() {
        self.cmd = "default"
    }
    
    init(cmd: String) {
        self.cmd = cmd
    }
    
    mutating func execute(cmd: String, desc: String) {
        self.cmd = cmd
        
        if cmd == "start" {
            print("시작합니다")
        }
    }
    
    func showPort(p: Int, memo desc: String) -> String {
        return "Port: \(p), Memo: \(desc)"
    }
}

@objc protocol Phone {
    var phoneNumber: String { get set }
    @objc optional var emailAddress: String { get set }
    func dialNumber()
    @objc optional func getEmail()
}

protocol Person {
    var firstNName: String { get set }
    var lastNname: String { get set }
    var birthDate: Date { get set }
    var profession: String { get }
    
    init(firstName: String, lastName: String, birthDate: Date)
}

protocol FuelPumpDelegate {
    func lackFuel()
    func fullFuel()
}

class FuelPump {
    var maxGage: Double = 100.0
    var delegate: FuelPumpDelegate? = nil
    
    var fuelGage: Double {
        didSet {
            if oldValue < 10 {
                // 연료가 부족해지면 델리게이트의 lackFuel 메소드를 호출한다.
                self.delegate?.lackFuel()
            } else if oldValue == self.maxGage {
                // 연료가 가득차면 델리게이트의 fullFuel 메소드를 호출한다.
                self.delegate?.fullFuel()
            }
        }
    }
    
    init(fuelGage: Double = 0) {
        self.fuelGage = fuelGage
    }
    
    // 연료펌프를 가동한다.
    func startPump() {
        while (true) {
            if (self.fuelGage > 0) {
                self.jetFuel()
            } else {
                break
            }
        }
    }
    
    // 연료를 엔진에 분사한다. 분사할 때마다 연료 게이지의 눈금은 내려간다.
    func jetFuel() {
        self.fuelGage -= 1
    }
}

class Car: FuelPumpDelegate {
    var fuelPump = FuelPump(fuelGage: 100)
    
    init() {
        self.fuelPump.delegate = self
    }
    
    // fuelPump가 호출하는 메소드이다.
    func lackFuel() {
        // 연료를 보충한다.
    }
    
    // fuelPump가 호출하는 메소드이다.
    func fullFuel() {
        // 연료 보충을 중단한다.
    }
    
    // 자동차에 시동을 건다.
    func start() {
        fuelPump.startPump()
    }
}

class Man {
    var name: String?
    
    init(name: String = "홍길동") {
        self.name = name
    }
}

protocol Job {
    func doWork()
}

extension Man: Job {
    func doWork() {
        print("\(self.name!)님이 일을 합니다")
    }
}

let man = Man(name: "개발자")
man.doWork()

protocol A {
    func doA()
}

protocol B {
    func doB()
}

protocol C: A, B {
    func doC()
}

class ABC: C {
    func doA() {
    }
    
    func doB() {
    }
    
    func doC() {
    }
}

let abc: C = ABC()
abc.doA()
abc.doB()
abc.doC()

let a: A = ABC()
a.doA()

let ab: A & B = ABC()
ab.doA()
ab.doB()

let abc2: A & B & C = ABC()
abc2.doA()
abc2.doB()
abc2.doC()

func foo(abc: C) { }
foo(abc: ABC())

func boo(abc: A & B) { }
boo(abc: ABC())
