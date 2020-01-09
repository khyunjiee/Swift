var adult = 19
var age = 21
var gender = "M"

if age < adult {
    if gender == "M" {
        print("남자 미성년자입니다")
    } else if gender == "F"{
        print("여자 미성년자입니다")
    } else {
        print("남자와 여자 어느 쪽에도 속하지 않습니다")
    }
} else {
    if gender == "M" {
        print("남자 성년자입니다")
    } else if gender == "F"{
        print("여자 성년자입니다")
    } else {
        print("남자와 여자 어느 쪽에도 속하지 않습니다")
    }
}

func divide(base: Int) {
    guard base != 0 else {
        print("연산할 수 없습니다.")
        return
    }
    
    guard base > 0 else {
        print("base는 0보다 커야 합니다.")
        return
    }
    
    guard base < 100 else {
        print("base는 100보다 작아야 합니다.")
        return
    }
    
    let result = 100 / base
    print(result)
}

let val = 2

switch val {
case 1:
    print("일치한 값은 1입니다.")
case 2:
    print("일치한 값은 2입니다.")
case 3:
    print("일치한 값 2가 더 있습니다.")
default:
    print("어느 패턴과도 일치하지 않았습니다.")
}

let sampleChar: Character = "a"

switch sampleChar {
case "a":
    fallthrough
case "A":
    print("글자는 A 입니다.")
default:
    print("일치하는 글자가 없습니다.")
}

var value = 3

switch value {
case 0, 1:
    print("0 또는 1 입니다.")
case 2, 3:
    print("2 또는 3 입니다.")
default:
    print("default 입니다.")
}

var v = (2,3)
switch v {
case let (x, 3):
    print("튜플의 두 번째 값이 3일 때 첫 번째 값은 \(x)입니다.")
case let (3,y):
    print("튜플의 첫 번째 값이 3일 때 두 번째 값은 \(y)입니다.")
case let (x,y):
    print("튜플의 값은 각각 \(x), \(y)입니다.")
}

var passtime = 1957

switch passtime {
case 0..<60:
    print("방금 작성된 글입니다.")
case 60..<3600:
    print("조금 전 작성된 글입니다.")
case 3600..<86400:
    print("얼마 전 작성된 글입니다.")
default:
    print("예전에 작성된 글입니다.")
}

switch v {
case (0..<2, 3):
    print("범위 A에 포함되었습니다.")
case (2..<5, 0..<3):
    print("범위 B에 포함되었습니다.")
case (2..<5, 3..<5):
    print("범위 C에 포함되었습니다.")
default:
    print("범위 D에 포함되었습니다.")
}

var point = (3, -3)

switch point {
case let (x, y) where x == y:
    print("\(x)와 \(y)은 x==y 선 상에 있습니다")
case let (x, y) where x == -y:
    print("\(x)와 \(y)은 x==-y 선 상에 있습니다")
case let (x, y):
    print("\(x)와 \(y)은 일반 좌표상에 있습니다")
}
