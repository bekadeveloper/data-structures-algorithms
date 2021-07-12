import Foundation

/*
 * Complete the 'solve' function below.
 *
 * The function accepts following parameters:
 *  1. DOUBLE meal_cost
 *  2. INTEGER tip_percent
 *  3. INTEGER tax_percent
 */

func solve(_ meal_cost: Double, _ tip_percent: Int, _ tax_percent: Int) -> Void {
    let tip = meal_cost/100 * Double(tip_percent)
    let tax = meal_cost/100 * Double(tax_percent)

    print("\(Int((meal_cost + tip + tax).rounded()))")
}

guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

solve(meal_cost, tip_percent, tax_percent)
