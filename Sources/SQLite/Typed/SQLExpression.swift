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

public protocol SQLExpressionType : SQLExpressible { // extensions cannot have inheritance clauses

    associatedtype UnderlyingType = Void

    var template: String { get }
    var bindings: [SQLBinding?] { get }

    init(_ template: String, _ bindings: [SQLBinding?])

}

extension SQLExpressionType {

    public init(literal: String) {
        self.init(literal, [])
    }

    public init(_ identifier: String) {
        self.init(literal: identifier.quote())
    }

    public init<U : SQLExpressionType>(_ expression: U) {
        self.init(expression.template, expression.bindings)
    }

}

/// An `Expression` represents a raw SQL fragment and any associated bindings.
public struct SQLExpression<Datatype> : SQLExpressionType {

    public typealias UnderlyingType = Datatype

    public var template: String
    public var bindings: [SQLBinding?]

    public init(_ template: String, _ bindings: [SQLBinding?]) {
        self.template = template
        self.bindings = bindings
    }

}

public protocol SQLExpressible {

    var expression: SQLExpression<Void> { get }

}

extension SQLExpressible {

    // naïve compiler for statements that can’t be bound, e.g., CREATE TABLE
    // FIXME: make internal (0.12.0)
    public func asSQL() -> String {
        let expressed = expression
        var idx = 0
        return expressed.template.reduce("") { template, character in
            let transcoded: String
            
            if character == "?" {
                transcoded = transcode(expressed.bindings[idx])
                idx += 1
            } else {
                transcoded = String(character)
            }
            return template + transcoded
        }
    }

}

extension SQLExpressionType {

    public var expression: SQLExpression<Void> {
        return SQLExpression(template, bindings)
    }

    public var asc: SQLExpressible {
        return " ".join([self, SQLExpression<Void>(literal: "ASC")])
    }

    public var desc: SQLExpressible {
        return " ".join([self, SQLExpression<Void>(literal: "DESC")])
    }

}

extension SQLExpressionType where UnderlyingType : SQLValue {

    public init(value: UnderlyingType) {
        self.init("?", [value.datatypeValue])
    }

}

extension SQLExpressionType where UnderlyingType : _SQLOptionalType, UnderlyingType.WrappedType : SQLValue {

    public static var null: Self {
        return self.init(value: nil)
    }

    public init(value: UnderlyingType.WrappedType?) {
        self.init("?", [value?.datatypeValue])
    }

}

extension SQLValue {

    public var expression: SQLExpression<Void> {
        return SQLExpression(value: self).expression
    }

}

public let rowid = SQLExpression<Int64>("ROWID")

public func cast<T: SQLValue, U: SQLValue>(_ expression: SQLExpression<T>) -> SQLExpression<U> {
    return SQLExpression("CAST (\(expression.template) AS \(U.declaredDatatype))", expression.bindings)
}

public func cast<T: SQLValue, U: SQLValue>(_ expression: SQLExpression<T?>) -> SQLExpression<U?> {
    return SQLExpression("CAST (\(expression.template) AS \(U.declaredDatatype))", expression.bindings)
}
