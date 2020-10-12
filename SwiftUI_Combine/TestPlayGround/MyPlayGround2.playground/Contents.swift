import UIKit
import Combine

let _ = Just(10)
    .map { value -> Int in
        return value * 2
    }
    .sink { value in
        print("Finished with value \(value)")
}


let p = PassthroughSubject<Int, Never>()
let s = p.sink { value in
    print("finished with \(value)")
}

p.send(30)
p.send(20)

let subject = PassthroughSubject<Int, Never>()
let subscription = subject
    .filter {
        $0 % 2 == 0
    }
    .sink { value in
        print("\(value) is even!")
}

subject.send(2)


class Dumper {
    var value = 0 {
        didSet {
            print("value was updated to \(value)")
        }
    }
}

let dumper = Dumper()
let publisher = [1, 2, 3, 4, 5].publisher

publisher.filter {
    $0 % 2 == 0
}.map {
    $0 * $0
}.assign(to: \.value, on: dumper)


//@Published
class SomeModel {
    @Published var name = "TEST"
}


let model = SomeModel()
let publisher2 = model.$name
publisher2
    .filter {
        $0.count > 0
    }.sink { value in
        print("name is \(value)")
}

model.name = "윤영석"
