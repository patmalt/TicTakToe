
import XCTest
@testable import Blah

class BlahTests: XCTestCase {
    
    func test_row_1() {
        let x = ["X X X",
                 "X O X",
                 "O X O"]
        XCTAssertEqual(Finder.winner(input: x), "X")
    }
    
    func test_row_2() {
        let x = ["X O X",
                 "X X X",
                 "O X O"]
        XCTAssertEqual(Finder.winner(input: x), "X")
    }
    
    func test_row_3() {
        let x = ["O X O",
                 "X O X",
                 "X X X"]
        XCTAssertEqual(Finder.winner(input: x), "X")
    }
    
    func test_column_1() {
        let x = ["O O X",
                 "O X X",
                 "O X O"]
        XCTAssertEqual(Finder.winner(input: x), "O")
    }
    
    func test_column_2() {
        let x = ["O O X",
                 "X O O",
                 "O O X"]
        XCTAssertEqual(Finder.winner(input: x), "O")
    }
    
    func test_column_3() {
        let x = ["X O O",
                 "X X O",
                 "O X O"]
        XCTAssertEqual(Finder.winner(input: x), "O")
    }
    
    func test_diagonal_1() {
        let x = ["X O O",
                 "X X O",
                 "O X X"]
        XCTAssertEqual(Finder.winner(input: x), "X")
    }
    
    func test_diagonal_2() {
        let x = ["X O O",
                 "X O O",
                 "O X X"]
        XCTAssertEqual(Finder.winner(input: x), "O")
    }
    
    func test_draw() {
        let x = ["X O O",
                 "O X X",
                 "O X O"]
        XCTAssertEqual(Finder.winner(input: x), "draw")
    }
    
    func test_invalid_1() {
        let x = ["X O ",
                 "O X X",
                 "O X O"]
        XCTAssertEqual(Finder.winner(input: x), "invalid")
    }
    
    func test_invalid_2() {
        let x = ["X O X X",
                 "O X X",
                 "O X O"]
        XCTAssertEqual(Finder.winner(input: x), "invalid")
    }
    
    func test_invalid_3() {
        let x = ["X O",
                 "O X",
                 "O X"]
        XCTAssertEqual(Finder.winner(input: x), "invalid")
    }
}
