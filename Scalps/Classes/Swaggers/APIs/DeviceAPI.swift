//
// DeviceAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class DeviceAPI: APIBase {
    /**
     Create device for a user

     - parameter userId: (path) The id (UUID) of the user for which to create a device
     - parameter name: (form) The name of the device
     - parameter platform: (form)  The platform of the device, this can be any string representing the platform type, for instance &#39;iOS 9.3&#39;
     - parameter deviceToken: (form)  The deviceToken is the device push notification token given to this device by the OS, either iOS or Android, for identifying the device with push notification services.
     - parameter latitude: (form) The latitude of the device.
     - parameter longitude: (form) The longitude of the device.
     - parameter altitude: (form) The altitude of the device.
     - parameter horizontalAccuracy: (form)  The horizontal accuracy of the location, measured on a scale from &#39;0.0&#39; to &#39;1.0&#39;, &#39;1.0&#39; being the most accurate. If this value is not specified then the default value of &#39;1.0&#39; is used  (optional, default to 5.0)
     - parameter verticalAccuracy: (form)  The vertical accuracy of the location, measured on a scale from &#39;0.0&#39; to &#39;1.0&#39;, &#39;1.0&#39; being the most accurate. If this value is not specified then the default value of &#39;1.0&#39; is used  (optional, default to 5.0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createDevice(userId: String, name: String, platform: String, deviceToken: String, latitude: Double, longitude: Double, altitude: Double, horizontalAccuracy: Double? = nil, verticalAccuracy: Double? = nil, completion: @escaping ((_ data: Device?,_ error: Error?) -> Void)) {
        createDeviceWithRequestBuilder(userId: userId, name: name, platform: platform, deviceToken: deviceToken, latitude: latitude, longitude: longitude, altitude: altitude, horizontalAccuracy: horizontalAccuracy, verticalAccuracy: verticalAccuracy).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create device for a user
     - POST /users/{userId}/devices
     - API Key:
       - type: apiKey api-key
       - name: api-key
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "location" : {
    "altitude" : 1.3579000000000001069366817318950779736042022705078125,
    "verticalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "latitude" : 1.3579000000000001069366817318950779736042022705078125,
    "horizontalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "timestamp" : 123456789,
    "longitude" : 1.3579000000000001069366817318950779736042022705078125
  },
  "deviceId" : "aeiou",
  "platform" : "aeiou",
  "deviceToken" : "aeiou"
}}]

     - parameter userId: (path) The id (UUID) of the user for which to create a device
     - parameter name: (form) The name of the device
     - parameter platform: (form)  The platform of the device, this can be any string representing the platform type, for instance &#39;iOS 9.3&#39;
     - parameter deviceToken: (form)  The deviceToken is the device push notification token given to this device by the OS, either iOS or Android, for identifying the device with push notification services.
     - parameter latitude: (form) The latitude of the device.
     - parameter longitude: (form) The longitude of the device.
     - parameter altitude: (form) The altitude of the device.
     - parameter horizontalAccuracy: (form)  The horizontal accuracy of the location, measured on a scale from &#39;0.0&#39; to &#39;1.0&#39;, &#39;1.0&#39; being the most accurate. If this value is not specified then the default value of &#39;1.0&#39; is used  (optional, default to 5.0)
     - parameter verticalAccuracy: (form)  The vertical accuracy of the location, measured on a scale from &#39;0.0&#39; to &#39;1.0&#39;, &#39;1.0&#39; being the most accurate. If this value is not specified then the default value of &#39;1.0&#39; is used  (optional, default to 5.0)

     - returns: RequestBuilder<Device>
     */
    open class func createDeviceWithRequestBuilder(userId: String, name: String, platform: String, deviceToken: String, latitude: Double, longitude: Double, altitude: Double, horizontalAccuracy: Double? = nil, verticalAccuracy: Double? = nil) -> RequestBuilder<Device> {
        var path = "/users/{userId}/devices"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "name": name,
            "platform": platform,
            "deviceToken": deviceToken,
            "latitude": latitude,
            "longitude": longitude,
            "altitude": altitude,
            "horizontalAccuracy": horizontalAccuracy,
            "verticalAccuracy": verticalAccuracy
        ]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Device>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Create a new location for a device

     - parameter userId: (path) The id (UUID) of the user
     - parameter deviceId: (path) The id (UUID) of the device
     - parameter latitude: (form) The latitude of the device.
     - parameter longitude: (form) The longitude of the device.
     - parameter altitude: (form) The altitude of the device.
     - parameter horizontalAccuracy: (form)  The horizontal accuracy of the location, measured on a scale from &#39;0.0&#39; to &#39;1.0&#39;, &#39;1.0&#39; being the most accurate. If this value is not specified then the default value of &#39;1.0&#39; is used  (optional, default to 5)
     - parameter verticalAccuracy: (form)  The vertical accuracy of the location, measured on a scale from &#39;0.0&#39; to &#39;1.0&#39;, &#39;1.0&#39; being the most accurate. If this value is not specified then the default value of &#39;1.0&#39; is used  (optional, default to 5)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createLocation(userId: String, deviceId: String, latitude: Double, longitude: Double, altitude: Double, horizontalAccuracy: Double? = nil, verticalAccuracy: Double? = nil, completion: @escaping ((_ data: DeviceLocation?,_ error: Error?) -> Void)) {
        createLocationWithRequestBuilder(userId: userId, deviceId: deviceId, latitude: latitude, longitude: longitude, altitude: altitude, horizontalAccuracy: horizontalAccuracy, verticalAccuracy: verticalAccuracy).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new location for a device
     - POST /users/{userId}/devices/{deviceId}/locations
     - API Key:
       - type: apiKey api-key
       - name: api-key
     - examples: [{contentType=application/json, example={
  "location" : {
    "altitude" : 1.3579000000000001069366817318950779736042022705078125,
    "verticalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "latitude" : 1.3579000000000001069366817318950779736042022705078125,
    "horizontalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "timestamp" : 123456789,
    "longitude" : 1.3579000000000001069366817318950779736042022705078125
  },
  "deviceId" : "aeiou"
}}]

     - parameter userId: (path) The id (UUID) of the user
     - parameter deviceId: (path) The id (UUID) of the device
     - parameter latitude: (form) The latitude of the device.
     - parameter longitude: (form) The longitude of the device.
     - parameter altitude: (form) The altitude of the device.
     - parameter horizontalAccuracy: (form)  The horizontal accuracy of the location, measured on a scale from &#39;0.0&#39; to &#39;1.0&#39;, &#39;1.0&#39; being the most accurate. If this value is not specified then the default value of &#39;1.0&#39; is used  (optional, default to 5)
     - parameter verticalAccuracy: (form)  The vertical accuracy of the location, measured on a scale from &#39;0.0&#39; to &#39;1.0&#39;, &#39;1.0&#39; being the most accurate. If this value is not specified then the default value of &#39;1.0&#39; is used  (optional, default to 5)

     - returns: RequestBuilder<DeviceLocation>
     */
    open class func createLocationWithRequestBuilder(userId: String, deviceId: String, latitude: Double, longitude: Double, altitude: Double, horizontalAccuracy: Double? = nil, verticalAccuracy: Double? = nil) -> RequestBuilder<DeviceLocation> {
        var path = "/users/{userId}/devices/{deviceId}/locations"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "latitude": latitude,
            "longitude": longitude,
            "altitude": altitude,
            "horizontalAccuracy": horizontalAccuracy,
            "verticalAccuracy": verticalAccuracy
        ]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<DeviceLocation>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a publication for a device for a user

     - parameter userId: (path) The id (UUID) of the user to create a device for
     - parameter deviceId: (path) The id (UUID) of the user device
     - parameter topic: (form) The topic of the publication. This will act as a first match filter. For a subscription to be able to match a publication they must have the exact same topic
     - parameter range: (form) The range of the publication in meters. This is the range around the device holding the publication in which matches with subscriptions can be triggered
     - parameter duration: (form) The duration of the publication in seconds. If set to &#39;-1&#39; the publication will live forever and if set to &#39;0&#39; it will be instant at the time of publication.
     - parameter properties: (form)  A string representing a map of (key, value) pairs in JSON format:  &#x60;{\&quot;key1\&quot;: \&quot;value1\&quot;, \&quot;key2\&quot;: \&quot;value2\&quot;}&#x60;
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPublication(userId: String, deviceId: String, topic: String, range: Double, duration: Double, properties: Properties, completion: @escaping ((_ data: Publication?,_ error: Error?) -> Void)) {
        createPublicationWithRequestBuilder(userId: userId, deviceId: deviceId, topic: topic, range: range, duration: duration, properties: properties).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a publication for a device for a user
     - POST /users/{userId}/devices/{deviceId}/publications
     - API Key:
       - type: apiKey api-key
       - name: api-key
     - examples: [{contentType=application/json, example={
  "duration" : 1.3579000000000001069366817318950779736042022705078125,
  "op" : "aeiou",
  "topic" : "aeiou",
  "range" : 1.3579000000000001069366817318950779736042022705078125,
  "location" : {
    "altitude" : 1.3579000000000001069366817318950779736042022705078125,
    "verticalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "latitude" : 1.3579000000000001069366817318950779736042022705078125,
    "horizontalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "timestamp" : 123456789,
    "longitude" : 1.3579000000000001069366817318950779736042022705078125
  },
  "publicationId" : "aeiou",
  "deviceId" : "aeiou",
  "properties" : "aeiou",
  "timestamp" : 123456789
}}]

     - parameter userId: (path) The id (UUID) of the user to create a device for
     - parameter deviceId: (path) The id (UUID) of the user device
     - parameter topic: (form) The topic of the publication. This will act as a first match filter. For a subscription to be able to match a publication they must have the exact same topic
     - parameter range: (form) The range of the publication in meters. This is the range around the device holding the publication in which matches with subscriptions can be triggered
     - parameter duration: (form) The duration of the publication in seconds. If set to &#39;-1&#39; the publication will live forever and if set to &#39;0&#39; it will be instant at the time of publication.
     - parameter properties: (form)  A string representing a map of (key, value) pairs in JSON format:  &#x60;{\&quot;key1\&quot;: \&quot;value1\&quot;, \&quot;key2\&quot;: \&quot;value2\&quot;}&#x60;

     - returns: RequestBuilder<Publication>
     */
    open class func createPublicationWithRequestBuilder(userId: String, deviceId: String, topic: String, range: Double, duration: Double, properties: Properties) -> RequestBuilder<Publication> {
        var path = "/users/{userId}/devices/{deviceId}/publications"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "topic": topic,
            "range": range,
            "duration": duration,
            "properties": properties
        ]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Publication>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a subscription for a device for a user

     - parameter userId: (path)  The id (UUID) of the user to create a device for
     - parameter deviceId: (path)  The id (UUID) of the user device
     - parameter topic: (form)  The topic of the subscription. This will act as a first match filter. For a subscription to be able to match a publication they must have the exact same topic
     - parameter selector: (form)  This is an expression to filter the publications. For instance &#39;job&#x3D;&#39;developer&#39;&#39; will allow matching only with publications containing a &#39;job&#39; key with a value of &#39;developer&#39;
     - parameter range: (form)  The range of the subscription in meters. This is the range around the device holding the subscription in which matches with publications can be triggered
     - parameter duration: (form)  The duration of the subscription in seconds. If set to &#39;-1&#39; the subscription will live forever and if set to &#39;0&#39; it will be instant at the time of subscription.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSubscription(userId: String, deviceId: String, topic: String, selector: String, range: Double, duration: Double, completion: @escaping ((_ data: Subscription?,_ error: Error?) -> Void)) {
        createSubscriptionWithRequestBuilder(userId: userId, deviceId: deviceId, topic: topic, selector: selector, range: range, duration: duration).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a subscription for a device for a user
     - POST /users/{userId}/devices/{deviceId}/subscriptions
     - API Key:
       - type: apiKey api-key
       - name: api-key
     - examples: [{contentType=application/json, example={
  "duration" : 1.3579000000000001069366817318950779736042022705078125,
  "op" : "aeiou",
  "topic" : "aeiou",
  "range" : 1.3579000000000001069366817318950779736042022705078125,
  "selector" : "aeiou",
  "location" : {
    "altitude" : 1.3579000000000001069366817318950779736042022705078125,
    "verticalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "latitude" : 1.3579000000000001069366817318950779736042022705078125,
    "horizontalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "timestamp" : 123456789,
    "longitude" : 1.3579000000000001069366817318950779736042022705078125
  },
  "subscriptionId" : "aeiou",
  "deviceId" : "aeiou",
  "timestamp" : 123456789
}}]

     - parameter userId: (path)  The id (UUID) of the user to create a device for
     - parameter deviceId: (path)  The id (UUID) of the user device
     - parameter topic: (form)  The topic of the subscription. This will act as a first match filter. For a subscription to be able to match a publication they must have the exact same topic
     - parameter selector: (form)  This is an expression to filter the publications. For instance &#39;job&#x3D;&#39;developer&#39;&#39; will allow matching only with publications containing a &#39;job&#39; key with a value of &#39;developer&#39;
     - parameter range: (form)  The range of the subscription in meters. This is the range around the device holding the subscription in which matches with publications can be triggered
     - parameter duration: (form)  The duration of the subscription in seconds. If set to &#39;-1&#39; the subscription will live forever and if set to &#39;0&#39; it will be instant at the time of subscription.

     - returns: RequestBuilder<Subscription>
     */
    open class func createSubscriptionWithRequestBuilder(userId: String, deviceId: String, topic: String, selector: String, range: Double, duration: Double) -> RequestBuilder<Subscription> {
        var path = "/users/{userId}/devices/{deviceId}/subscriptions"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "topic": topic,
            "selector": selector,
            "range": range,
            "duration": duration
        ]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Subscription>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Info about a device of a user

     - parameter userId: (path) The id (UUID) of the user of the device
     - parameter deviceId: (path) The id (UUID) of the user device
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDevice(userId: String, deviceId: String, completion: @escaping ((_ data: Device?,_ error: Error?) -> Void)) {
        getDeviceWithRequestBuilder(userId: userId, deviceId: deviceId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Info about a device of a user
     - GET /users/{userId}/devices/{deviceId}
     - API Key:
       - type: apiKey api-key
       - name: api-key
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "location" : {
    "altitude" : 1.3579000000000001069366817318950779736042022705078125,
    "verticalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "latitude" : 1.3579000000000001069366817318950779736042022705078125,
    "horizontalAccuracy" : 1.3579000000000001069366817318950779736042022705078125,
    "timestamp" : 123456789,
    "longitude" : 1.3579000000000001069366817318950779736042022705078125
  },
  "deviceId" : "aeiou",
  "platform" : "aeiou",
  "deviceToken" : "aeiou"
}}]

     - parameter userId: (path) The id (UUID) of the user of the device
     - parameter deviceId: (path) The id (UUID) of the user device

     - returns: RequestBuilder<Device>
     */
    open class func getDeviceWithRequestBuilder(userId: String, deviceId: String) -> RequestBuilder<Device> {
        var path = "/users/{userId}/devices/{deviceId}"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Device>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get matches for the device

     - parameter userId: (path) The id (UUID) of the user of the device
     - parameter deviceId: (path) The id (UUID) of the user device
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMatches(userId: String, deviceId: String, completion: @escaping ((_ data: Matches?,_ error: Error?) -> Void)) {
        getMatchesWithRequestBuilder(userId: userId, deviceId: deviceId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get matches for the device
     - GET /users/{userId}/devices/{deviceId}/matches
     - API Key:
       - type: apiKey api-key
       - name: api-key
     - examples: [{contentType=application/json, example=""}]

     - parameter userId: (path) The id (UUID) of the user of the device
     - parameter deviceId: (path) The id (UUID) of the user device

     - returns: RequestBuilder<Matches>
     */
    open class func getMatchesWithRequestBuilder(userId: String, deviceId: String) -> RequestBuilder<Matches> {
        var path = "/users/{userId}/devices/{deviceId}/matches"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Matches>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get all publications for a device

     - parameter userId: (path) The id (UUID) of the user
     - parameter deviceId: (path) The id (UUID) of the device
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPublications(userId: String, deviceId: String, completion: @escaping ((_ data: Publications?,_ error: Error?) -> Void)) {
        getPublicationsWithRequestBuilder(userId: userId, deviceId: deviceId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get all publications for a device
     - GET /users/{userId}/devices/{deviceId}/publications
     - API Key:
       - type: apiKey api-key
       - name: api-key
     - examples: [{contentType=application/json, example=""}]

     - parameter userId: (path) The id (UUID) of the user
     - parameter deviceId: (path) The id (UUID) of the device

     - returns: RequestBuilder<Publications>
     */
    open class func getPublicationsWithRequestBuilder(userId: String, deviceId: String) -> RequestBuilder<Publications> {
        var path = "/users/{userId}/devices/{deviceId}/publications"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Publications>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get all subscriptions for a device

     - parameter userId: (path) The id (UUID) of the user
     - parameter deviceId: (path) The id (UUID) of the device
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubscriptions(userId: String, deviceId: String, completion: @escaping ((_ data: Subscriptions?,_ error: Error?) -> Void)) {
        getSubscriptionsWithRequestBuilder(userId: userId, deviceId: deviceId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get all subscriptions for a device
     - GET /users/{userId}/devices/{deviceId}/subscriptions
     - API Key:
       - type: apiKey api-key
       - name: api-key
     - examples: [{contentType=application/json, example=""}]

     - parameter userId: (path) The id (UUID) of the user
     - parameter deviceId: (path) The id (UUID) of the device

     - returns: RequestBuilder<Subscriptions>
     */
    open class func getSubscriptionsWithRequestBuilder(userId: String, deviceId: String) -> RequestBuilder<Subscriptions> {
        var path = "/users/{userId}/devices/{deviceId}/subscriptions"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Subscriptions>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
