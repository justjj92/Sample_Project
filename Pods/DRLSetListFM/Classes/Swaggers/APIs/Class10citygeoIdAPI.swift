//
// Class10citygeoIdAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class Class10citygeoIdAPI {
    /**
     Get a city by its unique geoId.

     - parameter geoId: (path) the city&#x27;s geoId 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCityGET(geoId: String, completion: @escaping ((_ data: SfmCity?,_ error: Error?) -> Void)) {
        getCityGETWithRequestBuilder(geoId: geoId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a city by its unique geoId.
     - GET /1.0/city/{geoId}

     - examples: [{contentType=application/json, example={
  "id" : "5357527",
  "name" : "Hollywood",
  "stateCode" : "CA",
  "state" : "California",
  "coords" : {
    "long" : -118.3267434,
    "lat" : 34.0983425
  },
  "country" : {
    "code" : "US",
    "name" : "United States"
  }
}}]
     - parameter geoId: (path) the city&#x27;s geoId 

     - returns: RequestBuilder<SfmCity> 
     */
    open class func getCityGETWithRequestBuilder(geoId: String) -> RequestBuilder<SfmCity> {
        var path = "/1.0/city/{geoId}"
        let geoIdPreEscape = "\(geoId)"
        let geoIdPostEscape = geoIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{geoId}", with: geoIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SfmCity>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
