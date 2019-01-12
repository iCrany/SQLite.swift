//
// SQLite.swift
// https://github.com/stephencelis/SQLite.swift
// Copyright © 2014-2015 Stephen Celis.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

extension SQLExpressionType where UnderlyingType : SQLValue {

    /// Builds a copy of the expression prefixed with the `DISTINCT` keyword.
    ///
    ///     let name = Expression<String>("name")
    ///     name.distinct
    ///     // DISTINCT "name"
    ///
    /// - Returns: A copy of the expression prefixed with the `DISTINCT`
    ///   keyword.
    public var distinct: SQLExpression<UnderlyingType> {
        return SQLExpression("DISTINCT \(template)", bindings)
    }

    /// Builds a copy of the expression wrapped with the `count` aggregate
    /// function.
    ///
    ///     let name = Expression<String?>("name")
    ///     name.count
    ///     // count("name")
    ///     name.distinct.count
    ///     // count(DISTINCT "name")
    ///
    /// - Returns: A copy of the expression wrapped with the `count` aggregate
    ///   function.
    public var count: SQLExpression<Int> {
        return wrap(self)
    }

}

extension SQLExpressionType where UnderlyingType : _SQLOptionalType, UnderlyingType.WrappedType : SQLValue {

    /// Builds a copy of the expression prefixed with the `DISTINCT` keyword.
    ///
    ///     let name = Expression<String?>("name")
    ///     name.distinct
    ///     // DISTINCT "name"
    ///
    /// - Returns: A copy of the expression prefixed with the `DISTINCT`
    ///   keyword.
    public var distinct: SQLExpression<UnderlyingType> {
        return SQLExpression("DISTINCT \(template)", bindings)
    }

    /// Builds a copy of the expression wrapped with the `count` aggregate
    /// function.
    ///
    ///     let name = Expression<String?>("name")
    ///     name.count
    ///     // count("name")
    ///     name.distinct.count
    ///     // count(DISTINCT "name")
    ///
    /// - Returns: A copy of the expression wrapped with the `count` aggregate
    ///   function.
    public var count: SQLExpression<Int> {
        return wrap(self)
    }

}

extension SQLExpressionType where UnderlyingType : SQLValue, UnderlyingType.Datatype : Comparable {

    /// Builds a copy of the expression wrapped with the `max` aggregate
    /// function.
    ///
    ///     let age = Expression<Int>("age")
    ///     age.max
    ///     // max("age")
    ///
    /// - Returns: A copy of the expression wrapped with the `max` aggregate
    ///   function.
    public var max: SQLExpression<UnderlyingType?> {
        return wrap(self)
    }

    /// Builds a copy of the expression wrapped with the `min` aggregate
    /// function.
    ///
    ///     let age = Expression<Int>("age")
    ///     age.min
    ///     // min("age")
    ///
    /// - Returns: A copy of the expression wrapped with the `min` aggregate
    ///   function.
    public var min: SQLExpression<UnderlyingType?> {
        return wrap(self)
    }

}

extension SQLExpressionType where UnderlyingType : _SQLOptionalType, UnderlyingType.WrappedType : SQLValue, UnderlyingType.WrappedType.Datatype : Comparable {

    /// Builds a copy of the expression wrapped with the `max` aggregate
    /// function.
    ///
    ///     let age = Expression<Int?>("age")
    ///     age.max
    ///     // max("age")
    ///
    /// - Returns: A copy of the expression wrapped with the `max` aggregate
    ///   function.
    public var max: SQLExpression<UnderlyingType> {
        return wrap(self)
    }

    /// Builds a copy of the expression wrapped with the `min` aggregate
    /// function.
    ///
    ///     let age = Expression<Int?>("age")
    ///     age.min
    ///     // min("age")
    ///
    /// - Returns: A copy of the expression wrapped with the `min` aggregate
    ///   function.
    public var min: SQLExpression<UnderlyingType> {
        return wrap(self)
    }

}

extension SQLExpressionType where UnderlyingType : SQLValue, UnderlyingType.Datatype : SQLNumber {

    /// Builds a copy of the expression wrapped with the `avg` aggregate
    /// function.
    ///
    ///     let salary = Expression<Double>("salary")
    ///     salary.average
    ///     // avg("salary")
    ///
    /// - Returns: A copy of the expression wrapped with the `min` aggregate
    ///   function.
    public var average: SQLExpression<Double?> {
        return "avg".wrap(self)
    }

    /// Builds a copy of the expression wrapped with the `sum` aggregate
    /// function.
    ///
    ///     let salary = Expression<Double>("salary")
    ///     salary.sum
    ///     // sum("salary")
    ///
    /// - Returns: A copy of the expression wrapped with the `min` aggregate
    ///   function.
    public var sum: SQLExpression<UnderlyingType?> {
        return wrap(self)
    }

    /// Builds a copy of the expression wrapped with the `total` aggregate
    /// function.
    ///
    ///     let salary = Expression<Double>("salary")
    ///     salary.total
    ///     // total("salary")
    ///
    /// - Returns: A copy of the expression wrapped with the `min` aggregate
    ///   function.
    public var total: SQLExpression<Double> {
        return wrap(self)
    }

}

extension SQLExpressionType where UnderlyingType : _SQLOptionalType, UnderlyingType.WrappedType : SQLValue, UnderlyingType.WrappedType.Datatype : SQLNumber {

    /// Builds a copy of the expression wrapped with the `avg` aggregate
    /// function.
    ///
    ///     let salary = Expression<Double?>("salary")
    ///     salary.average
    ///     // avg("salary")
    ///
    /// - Returns: A copy of the expression wrapped with the `min` aggregate
    ///   function.
    public var average: SQLExpression<Double?> {
        return "avg".wrap(self)
    }

    /// Builds a copy of the expression wrapped with the `sum` aggregate
    /// function.
    ///
    ///     let salary = Expression<Double?>("salary")
    ///     salary.sum
    ///     // sum("salary")
    ///
    /// - Returns: A copy of the expression wrapped with the `min` aggregate
    ///   function.
    public var sum: SQLExpression<UnderlyingType> {
        return wrap(self)
    }

    /// Builds a copy of the expression wrapped with the `total` aggregate
    /// function.
    ///
    ///     let salary = Expression<Double?>("salary")
    ///     salary.total
    ///     // total("salary")
    ///
    /// - Returns: A copy of the expression wrapped with the `min` aggregate
    ///   function.
    public var total: SQLExpression<Double> {
        return wrap(self)
    }

}

extension SQLExpressionType where UnderlyingType == Int {

    static func count(_ star: Star) -> SQLExpression<UnderlyingType> {
        return wrap(star(nil, nil))
    }

}

/// Builds an expression representing `count(*)` (when called with the `*`
/// function literal).
///
///     count(*)
///     // count(*)
///
/// - Returns: An expression returning `count(*)` (when called with the `*`
///   function literal).
public func count(_ star: Star) -> SQLExpression<Int> {
    return SQLExpression.count(star)
}
