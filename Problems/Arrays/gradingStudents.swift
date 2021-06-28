import Foundation

// Grading Students (Easy)
func nextMultipleOfFive(_ number: Int) -> Int {
    if number % 5 == 0 {
        return number
    } else {
        return nextMultipleOfFive(number+1)
    }
}

func gradingStudents(grades: [Int]) -> [Int] {
    var result = [Int]()
    
    for grade in grades {
        if grade >= 38 && (grade - nextMultipleOfFive(grade)).magnitude < 3 {
            result.append(nextMultipleOfFive(grade))
        } else {
            result.append(grade)
        }
    }
    return result
}
