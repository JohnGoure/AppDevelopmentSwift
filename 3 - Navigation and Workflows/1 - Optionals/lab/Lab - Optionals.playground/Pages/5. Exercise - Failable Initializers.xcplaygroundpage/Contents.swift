/*:
 ## Exercise - Failable Initializers
 
 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2017.
 */
class Computer {
    var ram: Int
    var yearManufactured: Int
    
    init?(_ ram: Int, _ yearManufactured: Int) {
        if ram <= 0 || yearManufactured < 1970 && yearManufactured > 2017 {
            return nil
        }
        self.ram = ram
        self.yearManufactured = yearManufactured
    }
}

/*:
 Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
 */
var newishComputer = Computer(0, 1980)
var perfectComputer = Computer(1280, 2011)
if let realRam = perfectComputer?.ram {
    print(realRam)
}

//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
