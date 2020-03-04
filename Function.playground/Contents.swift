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
