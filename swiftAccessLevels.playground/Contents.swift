import UIKit

//access level in swift

//accessible within a scope
//most restrictive
private var a = 9

// Accessible within a file
fileprivate var b = 80

//accessible anywhere in the current app module
// default access property
internal var c = 90

// Accessible to other modules
public var d = 78

// Only classes and overridable class members can be declared 'open'
//Less restrictive
//open var e = 56
