//
// Subscription.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A subscription can be seen as a JMS subscription extended with the notion of geographical zone. The zone again being defined as circle with a center at the given location and a range around that location.  */
open class Subscription: JSONEncodable {

    /** The timestamp in seconds since Jan 01 1970. (UTC). If no timestamp is provided upon creation then the system uses the moment of the call to the api as a timestamp. */
    public var timestamp: Int64?
    /** The id (UUID) of the subscription. */
    public var id: String?
    /** The id (UUID) of the device to attach a subscription to. */
    public var deviceId: String?
    /** The topic of the subscription. This will act as a first match filter. For a subscription to be able to match a publication they must have the exact same topic. */
    public var topic: String?
    /** This is an expression to filter the publications. For instance &#39;job&#x3D;&#39;developer&#39;&#39; will allow matching only with publications containing a &#39;job&#39; key with a value of &#39;developer&#39;. */
    public var selector: String?
    /** The range of the subscription in meters. This is the range around the device holding the subscription in which matches with publications can be triggered. */
    public var range: Double?
    /** The duration of the subscription in seconds. If set to &#39;-1&#39; the subscription will live forever and if set to &#39;0&#39; it will be instant at the time of subscription. */
    public var duration: Double?
    /** The internal operation resulting from the API call. For instance &#39;create&#39;. */
    public var op: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["timestamp"] = self.timestamp?.encodeToJSON()
        nillableDictionary["id"] = self.id
        nillableDictionary["deviceId"] = self.deviceId
        nillableDictionary["topic"] = self.topic
        nillableDictionary["selector"] = self.selector
        nillableDictionary["range"] = self.range
        nillableDictionary["duration"] = self.duration
        nillableDictionary["op"] = self.op

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
