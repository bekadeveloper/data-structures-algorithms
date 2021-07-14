
class ParkingSystem {
    var big, medium, small: Int
    
    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        if carType == 1 && big > 0 {
            big -= 1
            return true
        } else if carType == 2 && medium > 0 {
            medium -= 1
            return true
        } else if carType == 3 && small > 0 {
            small -= 1
            return true
        } else {
            return false
        }
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */