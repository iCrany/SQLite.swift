import XCTest
@testable import SQLite

class DateAndTimeFunctionsTests : XCTestCase {

    func test_date() {
        AssertSQL("date('now')", SQLDateFunctions.date("now"))
        AssertSQL("date('now', 'localtime')", SQLDateFunctions.date("now", "localtime"))
    }

    func test_time() {
        AssertSQL("time('now')", SQLDateFunctions.time("now"))
        AssertSQL("time('now', 'localtime')", SQLDateFunctions.time("now", "localtime"))
    }

    func test_datetime() {
        AssertSQL("datetime('now')", SQLDateFunctions.datetime("now"))
        AssertSQL("datetime('now', 'localtime')", SQLDateFunctions.datetime("now", "localtime"))
    }

    func test_julianday() {
        AssertSQL("julianday('now')", SQLDateFunctions.julianday("now"))
        AssertSQL("julianday('now', 'localtime')", SQLDateFunctions.julianday("now", "localtime"))
    }

    func test_strftime() {
        AssertSQL("strftime('%Y-%m-%d', 'now')", SQLDateFunctions.strftime("%Y-%m-%d", "now"))
        AssertSQL("strftime('%Y-%m-%d', 'now', 'localtime')", SQLDateFunctions.strftime("%Y-%m-%d", "now", "localtime"))
    }
}

class DateExtensionTests : XCTestCase {
    func test_time() {
        AssertSQL("time('1970-01-01T00:00:00.000')", Date(timeIntervalSince1970: 0).time)
    }

    func test_date() {
        AssertSQL("date('1970-01-01T00:00:00.000')", Date(timeIntervalSince1970: 0).date)
    }

    func test_datetime() {
        AssertSQL("datetime('1970-01-01T00:00:00.000')", Date(timeIntervalSince1970: 0).datetime)
    }

    func test_julianday() {
        AssertSQL("julianday('1970-01-01T00:00:00.000')", Date(timeIntervalSince1970: 0).julianday)
    }
}

class DateExpressionTests : XCTestCase {
    func test_date() {
        AssertSQL("date(\"date\")", date.date)
    }

    func test_time() {
        AssertSQL("time(\"date\")", date.time)
    }

    func test_datetime() {
        AssertSQL("datetime(\"date\")", date.datetime)
    }

    func test_julianday() {
        AssertSQL("julianday(\"date\")", date.julianday)
    }
}
