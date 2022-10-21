//
// Class10searchcitiesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class Class10searchcitiesAPI {
    /**
     Search for a city.

     - parameter country: (query) the city&#x27;s country (optional)
     - parameter name: (query) name of the city (optional)
     - parameter p: (query) the number of the result page you&#x27;d like to have (optional)
     - parameter state: (query) state the city lies in (optional)
     - parameter stateCode: (query) state code the city lies in (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCitiesGET(country: String? = nil, name: String? = nil, p: Int? = nil, state: String? = nil, stateCode: String? = nil, completion: @escaping ((_ data: SfmCities?,_ error: Error?) -> Void)) {
        getCitiesGETWithRequestBuilder(country: country, name: name, p: p, state: state, stateCode: stateCode).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Search for a city.
     - GET /1.0/search/cities

     - examples: [{contentType=application/json, example={
  "cities" : [ {
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
  }, {
    "id" : "...",
    "name" : "...",
    "stateCode" : "...",
    "state" : "...",
    "coords" : {
      "long" : 12345,
      "lat" : 12345
    },
    "country" : {
      "code" : "...",
      "name" : "..."
    }
  } ],
  "total" : 42,
  "page" : 1,
  "itemsPerPage" : 20
}}]
     - parameter country: (query) the city&#x27;s country (optional)
     - parameter name: (query) name of the city (optional)
     - parameter p: (query) the number of the result page you&#x27;d like to have (optional)
     - parameter state: (query) state the city lies in (optional)
     - parameter stateCode: (query) state code the city lies in (optional)

     - returns: RequestBuilder<SfmCities> 
     */
    open class func getCitiesGETWithRequestBuilder(country: String? = nil, name: String? = nil, p: Int? = nil, state: String? = nil, stateCode: String? = nil) -> RequestBuilder<SfmCities> {
        let path = "/1.0/search/cities"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "country": country, 
                        "name": name, 
                        "p": p?.encodeToJSON(), 
                        "state": state, 
                        "stateCode": stateCode
        ])


        let requestBuilder: RequestBuilder<SfmCities>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
