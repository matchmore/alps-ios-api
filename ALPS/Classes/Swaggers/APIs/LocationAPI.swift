//
// LocationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class LocationAPI {
    /**
     Create a new location for a device
     
     - parameter deviceId: (path) The id (UUID) of the device. 
     - parameter location: (body) Location to create for a device.  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createLocation(deviceId: String, location: Location, completion: @escaping ((_ data: Location?,_ error: Error?) -> Void)) {
        createLocationWithRequestBuilder(deviceId: deviceId, location: location).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new location for a device
     - POST /devices/{deviceId}/locations
     - examples: [{contentType=application/json, example={
  "createdAt" : 0,
  "altitude" : 5.962133916683182,
  "verticalAccuracy" : 2.3021358869347655,
  "latitude" : 6.027456183070403,
  "horizontalAccuracy" : 5.637376656633329,
  "longitude" : 1.4658129805029452
}}]
     
     - parameter deviceId: (path) The id (UUID) of the device. 
     - parameter location: (body) Location to create for a device.  

     - returns: RequestBuilder<Location> 
     */
    open class func createLocationWithRequestBuilder(deviceId: String, location: Location) -> RequestBuilder<Location> {
        var path = "/devices/{deviceId}/locations"
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: location)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Location>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
