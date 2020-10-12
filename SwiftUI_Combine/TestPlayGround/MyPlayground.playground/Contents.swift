import UIKit

let value = 3

switch value {
case value where value > 2: print("upper 2 >> \(value)")
default:
    print("same or down 2")
}


let array : [Int?] = [nil, 2, 3]

for case let num? in array where num > 2 {
    print("numb is \(num)")
}

let someA = 42
let someB = 42

if case someA = someB {
    print("someA is equal to someB")
}

if case let x = someB {
    if case x = someA {
        print("someA is equal to someB")
    }
}


//if문에서 case는 = 하나를 빼도 된다? 아마도

let someTuple = (4, 0)
if case (_, 0) = someTuple {
    print("someTuple is on the x axis")
}

if case (4, _) = someTuple {
    print("someTuple is on the x axis2")
}


enum Either {
    case Left(Int, Int)
    case Right(Double, Double)
}

var someEither = Either.Left(13, 169)

if case .Left = someEither {
    print("someEither is .Left type")
}

if case .Left(let x, _) = someEither, x % 2 == 0 {
    print("someEither is .Left type and it's first element is even number.")
}

let someOptional : Int? = 42

if case .some(let x) = someOptional {
    print(x)
}


let topics = ["iOS", "Android", "Python", "Java", "JS", nil]


//.some 은 Optional의 enum중 하나 이며, 값이 있는 것을 뜻한다.
// where는 정확한 타입이나 값을 명시하기 위하여 where절을 사용한다.
for case let .some(topic) in topics {
    print("Topic is \(topic)")
}

for case let .some(t) in topics where t.starts(with: "J") {
    print("Topics Starting with J is \(t)")
}

enum Media {
    case book(title : String, author : String, year : Int)
    case movie(title : String, director : String, year : Int)
    case website(urlString : String)
}

let mediaList: [Media] = [
    .book(title: "Harry Potter and the Philosopher's Stone", author: "J.K. Rowling", year: 1997),
    .movie(title: "Harry Potter and the Philosopher's Stone", director: "Chris Columbus", year: 2001),
    .book(title: "Harry Potter and the Chamber of Secrets", author: "J.K. Rowling", year: 1999),
    .movie(title: "Harry Potter and the Chamber of Secrets", director: "Chris Columbus", year: 2002),
    .book(title: "Harry Potter and the Prisoner of Azkaban", author: "J.K. Rowling", year: 1999),
    .movie(title: "Harry Potter and the Prisoner of Azkaban", director: "Alfonso Cuarón", year: 2004),
    .movie(title: "J.K. Rowling: A Year in the Life", director: "James Runcie", year: 2007),
    .website(urlString: "https://en.wikipedia.org/wiki/List_of_Harry_Potter-related_topics")
]

print("Movies only:")

for case let Media.movie(title, _, year) in mediaList {
    print(" - \(title), (\(year))")
}



let arrayOfOptionalInts : [Int?] = [nil, 2, 3, nil, 5]

for case let number? in arrayOfOptionalInts {
    print(number)
}
