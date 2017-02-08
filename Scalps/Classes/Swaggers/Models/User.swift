//
// User.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class User: JSONEncodable {
    /** The id (UUID) of the user */
    public var userId: String?
    /** The name of the user */
    public var name: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["userId"] = self.userId
        nillableDictionary["name"] = self.name
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
