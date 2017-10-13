
import Foundation

class Finder {
    class func winner(input: [String]) -> String {
        var winner = "draw"
        let rows = input.map { $0.characters.map { $0 }.filter { String($0) != " "} }
        
        let count = rows.map { $0.count }.filter { $0 == rows.count }.count
        if count == rows.count {
            
            // Check Rows
            rows.forEach { row in
                guard let first = row.first else {
                    return
                }
                let matches = row.map { $0 == first }.filter { $0 }.count
                if matches == row.count {
                    winner = "\(first)"
                }
            }
            
            // Check Columns
            if let firstRow = rows.first {
                _ = firstRow.enumerated().map { index, value in
                    let column = rows.map { return $0[index] }
                    let matches = column.map { $0 == value }.filter { $0 }.count
                    if matches == column.count {
                        winner = "\(value)"
                    }
                }
            }
            
            // Check First Diagonal
            if let first = rows.first?.first {
                let diagonal = rows.enumerated().map { index, value in
                    return rows[index][index]
                }
                let matches = diagonal.map { $0 == first }.filter { $0 }.count
                if matches == diagonal.count {
                    winner = "\(first)"
                }
            }
            
            // Check Second Diagonal
            let reversed = rows.map { $0.reversed().map { $0 } }
            if let first = reversed.first?.first {
                let diagonal = reversed.enumerated().map { index, value in
                    return reversed[index][index]
                }
                let matches = diagonal.map { $0 == first }.filter { $0 }.count
                if matches == diagonal.count {
                    winner = "\(first)"
                }
            }
            return winner
        } else {
            return "invalid"
        }
    }
}
