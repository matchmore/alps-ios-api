//
// User.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A user represents an anonymous user of the ALPS middleware. He/she can be connected via its mobile device or a user can be just an owner of Pin- or Beacon devices. A user issues publications and subscriptions for one of his associated devices, i.e. the publications and subscriptions belong to the particular device.  */
open class User: JSONEncodable {

    /** The id (UUID) of the user. */
    public var id: String?
    /** The name of the user. */
    public var name: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["name"] = self.name

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
