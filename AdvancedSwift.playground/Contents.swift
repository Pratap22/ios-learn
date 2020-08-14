import Foundation

let pizzaInInches: Int = 10
var numberOfPeople:Int = 6
let slicesPerPerson:Int = 5

//Observed properties
var pizzaInInchesObserved: Int = 10 {
    willSet{
        print(pizzaInInchesObserved) // 10 current value
        print(newValue) // 8
    }
    didSet {
        print(oldValue) // 10
        print(pizzaInInchesObserved) // 10 current value
        
        if pizzaInInchesObserved >= 18 {
            print("Invalid size! Setting to default 18")
            pizzaInInchesObserved = 18
        }
    }
}

pizzaInInchesObserved = 33
print(pizzaInInchesObserved) // 18

var numberOfSlices:Int {
    get{
        return pizzaInInches - 4
    }
}

var numberOfPizza:Int {
    get {
        let numOfPeopleFedPerPizza =  numberOfSlices / slicesPerPerson
        return numberOfPeople / numOfPeopleFedPerPizza
    }
    
    set {
        let totalSLices = numberOfSlices * newValue
        numberOfPeople = totalSLices / slicesPerPerson
    }
}

numberOfPizza = 4



//Computed property
//It has to have var modifier
//We need to explicitly data type

//var numberOfSlices:Int {
//    return pizzaInInches - 4
//}

//var numberOfSlices:Int {
//    get{
//        return pizzaInInches - 4
//    }
//
//    set{
//        print("The new value is \(newValue )")
//    }
//
//}
//
//var numberOfSlices1:Int = 10
//
//print(numberOfSlices1)
//
//func calcPizzaSlices(){
//    numberOfSlices1 = pizzaInInches - 4
//}
//calcPizzaSlices()
//
//print(numberOfSlices1)



//Paint calculator

var width: Float = 1.5
var height: Float = 2.3
let areaCoveredPerBucket: Float = 1.5

var bucketOfPaints: Int {
    
    get {
        let area = width * height
        let numberOfBuckets = area/areaCoveredPerBucket
        
        return Int(ceilf(numberOfBuckets))
    }
    
    set {
        let areaCanCovered = Double(newValue) * Double(areaCoveredPerBucket)
        print("This amount of paint can cover an area of \(areaCanCovered)")
    }
    
}

bucketOfPaints = 4

print(bucketOfPaints)


