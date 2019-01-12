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

// TODO: use `@warn_unused_result` by the time operator functions support it

public func +(lhs: SQLExpression<String>, rhs: SQLExpression<String>) -> SQLExpression<String> {
    return "||".infix(lhs, rhs)
}

public func +(lhs: SQLExpression<String>, rhs: SQLExpression<String?>) -> SQLExpression<String?> {
    return "||".infix(lhs, rhs)
}
public func +(lhs: SQLExpression<String?>, rhs: SQLExpression<String>) -> SQLExpression<String?> {
    return "||".infix(lhs, rhs)
}
public func +(lhs: SQLExpression<String?>, rhs: SQLExpression<String?>) -> SQLExpression<String?> {
    return "||".infix(lhs, rhs)
}
public func +(lhs: SQLExpression<String>, rhs: String) -> SQLExpression<String> {
    return "||".infix(lhs, rhs)
}
public func +(lhs: SQLExpression<String?>, rhs: String) -> SQLExpression<String?> {
    return "||".infix(lhs, rhs)
}
public func +(lhs: String, rhs: SQLExpression<String>) -> SQLExpression<String> {
    return "||".infix(lhs, rhs)
}
public func +(lhs: String, rhs: SQLExpression<String?>) -> SQLExpression<String?> {
    return "||".infix(lhs, rhs)
}

// MARK: -

public func +<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func +<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func +<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func +<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func +<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func +<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func +<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func +<V: SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}

public func -<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func -<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func -<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func -<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func -<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func -<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func -<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func -<V: SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}

public func *<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func *<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func *<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func *<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func *<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func *<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func *<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func *<V: SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}

public func /<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func /<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func /<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func /<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func /<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func /<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func /<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}
public func /<V: SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return infix(lhs, rhs)
}

public prefix func -<V : SQLValue>(rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype : SQLNumber {
    return wrap(rhs)
}
public prefix func -<V : SQLValue>(rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype : SQLNumber {
    return wrap(rhs)
}

// MARK: -

public func %<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func %<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func %<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func %<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func %<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func %<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func %<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func %<V : SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}

public func <<<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func <<<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func <<<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func <<<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func <<<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func <<<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func <<<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func <<<V : SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}

public func >><V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func >><V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func >><V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func >><V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func >><V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func >><V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func >><V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func >><V : SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}

public func &<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func &<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func &<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func &<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func &<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func &<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func &<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func &<V : SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}

public func |<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func |<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func |<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func |<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func |<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func |<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func |<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}
public func |<V : SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return infix(lhs, rhs)
}

public func ^<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return (~(lhs & rhs)) & (lhs | rhs)
}
public func ^<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return (~(lhs & rhs)) & (lhs | rhs)
}
public func ^<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return (~(lhs & rhs)) & (lhs | rhs)
}
public func ^<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return (~(lhs & rhs)) & (lhs | rhs)
}
public func ^<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<V> where V.Datatype == Int64 {
    return (~(lhs & rhs)) & (lhs | rhs)
}
public func ^<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<V?> where V.Datatype == Int64 {
    return (~(lhs & rhs)) & (lhs | rhs)
}
public func ^<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return (~(lhs & rhs)) & (lhs | rhs)
}
public func ^<V : SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return (~(lhs & rhs)) & (lhs | rhs)
}

public prefix func ~<V : SQLValue>(rhs: SQLExpression<V>) -> SQLExpression<V> where V.Datatype == Int64 {
    return wrap(rhs)
}
public prefix func ~<V : SQLValue>(rhs: SQLExpression<V?>) -> SQLExpression<V?> where V.Datatype == Int64 {
    return wrap(rhs)
}

// MARK: -

public func ==<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Equatable {
    return "=".infix(lhs, rhs)
}
public func ==<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Equatable {
    return "=".infix(lhs, rhs)
}
public func ==<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<Bool?> where V.Datatype : Equatable {
    return "=".infix(lhs, rhs)
}
public func ==<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Equatable {
    return "=".infix(lhs, rhs)
}
public func ==<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<Bool> where V.Datatype : Equatable {
    return "=".infix(lhs, rhs)
}
public func ==<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V?) -> SQLExpression<Bool?> where V.Datatype : Equatable {
    guard let rhs = rhs else { return "IS".infix(lhs, SQLExpression<V?>(value: nil)) }
    return "=".infix(lhs, rhs)
}
public func ==<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Equatable {
    return "=".infix(lhs, rhs)
}
public func ==<V : SQLValue>(lhs: V?, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Equatable {
    guard let lhs = lhs else { return "IS".infix(SQLExpression<V?>(value: nil), rhs) }
    return "=".infix(lhs, rhs)
}

public func !=<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Equatable {
    return infix(lhs, rhs)
}
public func !=<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Equatable {
    return infix(lhs, rhs)
}
public func !=<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<Bool?> where V.Datatype : Equatable {
    return infix(lhs, rhs)
}
public func !=<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Equatable {
    return infix(lhs, rhs)
}
public func !=<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<Bool> where V.Datatype : Equatable {
    return infix(lhs, rhs)
}
public func !=<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V?) -> SQLExpression<Bool?> where V.Datatype : Equatable {
    guard let rhs = rhs else { return "IS NOT".infix(lhs, SQLExpression<V?>(value: nil)) }
    return infix(lhs, rhs)
}
public func !=<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Equatable {
    return infix(lhs, rhs)
}
public func !=<V : SQLValue>(lhs: V?, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Equatable {
    guard let lhs = lhs else { return "IS NOT".infix(SQLExpression<V?>(value: nil), rhs) }
    return infix(lhs, rhs)
}

public func ><V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func ><V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func ><V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func ><V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func ><V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func ><V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func ><V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func ><V : SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}

public func >=<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func >=<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func >=<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func >=<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func >=<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func >=<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func >=<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func >=<V : SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}

public func <<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <<V : SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}

public func <=<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <=<V : SQLValue>(lhs: SQLExpression<V>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <=<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <=<V : SQLValue>(lhs: SQLExpression<V?>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <=<V : SQLValue>(lhs: SQLExpression<V>, rhs: V) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <=<V : SQLValue>(lhs: SQLExpression<V?>, rhs: V) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <=<V : SQLValue>(lhs: V, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}
public func <=<V : SQLValue>(lhs: V, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable {
    return infix(lhs, rhs)
}

public func ~=<V : SQLValue>(lhs: ClosedRange<V>, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable & SQLValue {
    return SQLExpression("\(rhs.template) BETWEEN ? AND ?", rhs.bindings + [lhs.lowerBound.datatypeValue, lhs.upperBound.datatypeValue])
}

public func ~=<V : SQLValue>(lhs: ClosedRange<V>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable & SQLValue {
    return SQLExpression("\(rhs.template) BETWEEN ? AND ?", rhs.bindings + [lhs.lowerBound.datatypeValue, lhs.upperBound.datatypeValue])
}

public func ~=<V : SQLValue>(lhs: Range<V>, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable & SQLValue {
    return SQLExpression("\(rhs.template) >= ? AND \(rhs.template) < ?", rhs.bindings + [lhs.lowerBound.datatypeValue] + rhs.bindings + [lhs.upperBound.datatypeValue])
}

public func ~=<V : SQLValue>(lhs: Range<V>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable & SQLValue {
    return SQLExpression("\(rhs.template) >= ? AND \(rhs.template) < ?", rhs.bindings + [lhs.lowerBound.datatypeValue] + rhs.bindings + [lhs.upperBound.datatypeValue])
}

public func ~=<V : SQLValue>(lhs: PartialRangeThrough<V>, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable & SQLValue {
    return SQLExpression("\(rhs.template) <= ?", rhs.bindings + [lhs.upperBound.datatypeValue])
}

public func ~=<V : SQLValue>(lhs: PartialRangeThrough<V>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable & SQLValue {
    return SQLExpression("\(rhs.template) <= ?", rhs.bindings + [lhs.upperBound.datatypeValue])
}

public func ~=<V : SQLValue>(lhs: PartialRangeUpTo<V>, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable & SQLValue {
    return SQLExpression("\(rhs.template) < ?", rhs.bindings + [lhs.upperBound.datatypeValue])
}

public func ~=<V : SQLValue>(lhs: PartialRangeUpTo<V>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable & SQLValue {
    return SQLExpression("\(rhs.template) < ?", rhs.bindings + [lhs.upperBound.datatypeValue])
}

public func ~=<V : SQLValue>(lhs: PartialRangeFrom<V>, rhs: SQLExpression<V>) -> SQLExpression<Bool> where V.Datatype : Comparable & SQLValue {
    return SQLExpression("\(rhs.template) >= ?", rhs.bindings + [lhs.lowerBound.datatypeValue])
}

public func ~=<V : SQLValue>(lhs: PartialRangeFrom<V>, rhs: SQLExpression<V?>) -> SQLExpression<Bool?> where V.Datatype : Comparable & SQLValue {
    return SQLExpression("\(rhs.template) >= ?", rhs.bindings + [lhs.lowerBound.datatypeValue])
}

// MARK: -

public func &&(lhs: SQLExpression<Bool>, rhs: SQLExpression<Bool>) -> SQLExpression<Bool> {
    return "AND".infix(lhs, rhs)
}
public func &&(lhs: SQLExpression<Bool>, rhs: SQLExpression<Bool?>) -> SQLExpression<Bool?> {
    return "AND".infix(lhs, rhs)
}
public func &&(lhs: SQLExpression<Bool?>, rhs: SQLExpression<Bool>) -> SQLExpression<Bool?> {
    return "AND".infix(lhs, rhs)
}
public func &&(lhs: SQLExpression<Bool?>, rhs: SQLExpression<Bool?>) -> SQLExpression<Bool?> {
    return "AND".infix(lhs, rhs)
}
public func &&(lhs: SQLExpression<Bool>, rhs: Bool) -> SQLExpression<Bool> {
    return "AND".infix(lhs, rhs)
}
public func &&(lhs: SQLExpression<Bool?>, rhs: Bool) -> SQLExpression<Bool?> {
    return "AND".infix(lhs, rhs)
}
public func &&(lhs: Bool, rhs: SQLExpression<Bool>) -> SQLExpression<Bool> {
    return "AND".infix(lhs, rhs)
}
public func &&(lhs: Bool, rhs: SQLExpression<Bool?>) -> SQLExpression<Bool?> {
    return "AND".infix(lhs, rhs)
}

public func ||(lhs: SQLExpression<Bool>, rhs: SQLExpression<Bool>) -> SQLExpression<Bool> {
    return "OR".infix(lhs, rhs)
}
public func ||(lhs: SQLExpression<Bool>, rhs: SQLExpression<Bool?>) -> SQLExpression<Bool?> {
    return "OR".infix(lhs, rhs)
}
public func ||(lhs: SQLExpression<Bool?>, rhs: SQLExpression<Bool>) -> SQLExpression<Bool?> {
    return "OR".infix(lhs, rhs)
}
public func ||(lhs: SQLExpression<Bool?>, rhs: SQLExpression<Bool?>) -> SQLExpression<Bool?> {
    return "OR".infix(lhs, rhs)
}
public func ||(lhs: SQLExpression<Bool>, rhs: Bool) -> SQLExpression<Bool> {
    return "OR".infix(lhs, rhs)
}
public func ||(lhs: SQLExpression<Bool?>, rhs: Bool) -> SQLExpression<Bool?> {
    return "OR".infix(lhs, rhs)
}
public func ||(lhs: Bool, rhs: SQLExpression<Bool>) -> SQLExpression<Bool> {
    return "OR".infix(lhs, rhs)
}
public func ||(lhs: Bool, rhs: SQLExpression<Bool?>) -> SQLExpression<Bool?> {
    return "OR".infix(lhs, rhs)
}

public prefix func !(rhs: SQLExpression<Bool>) -> SQLExpression<Bool> {
    return "NOT ".wrap(rhs)
}
public prefix func !(rhs: SQLExpression<Bool?>) -> SQLExpression<Bool?> {
    return "NOT ".wrap(rhs)
}
