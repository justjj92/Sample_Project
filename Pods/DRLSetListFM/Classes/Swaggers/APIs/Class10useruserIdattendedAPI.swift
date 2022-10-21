//
// Class10useruserIdattendedAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class Class10useruserIdattendedAPI {
    /**
     .

     - parameter userId: (path) the user&#x27;s userId 
     - parameter p: (query) the number of the result page (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserAttendedSetlistsGET(userId: String, p: Int? = nil, completion: @escaping ((_ data: SfmSetlists?,_ error: Error?) -> Void)) {
        getUserAttendedSetlistsGETWithRequestBuilder(userId: userId, p: p).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     .
     - GET /1.0/user/{userId}/attended

     - examples: [{contentType=application/json, example={
  "setlist" : [ {
    "artist" : {
      "mbid" : "b10bbbfc-cf9e-42e0-be17-e2c3e1d2600d",
      "tmid" : 735610,
      "name" : "The Beatles",
      "sortName" : "Beatles, The",
      "disambiguation" : "John, Paul, George and Ringo",
      "url" : "https://www.setlist.fm/setlists/the-beatles-23d6a88b.html"
    },
    "venue" : {
      "city" : { },
      "url" : "https://www.setlist.fm/venue/compaq-center-san-jose-ca-usa-6bd6ca6e.html",
      "id" : "6bd6ca6e",
      "name" : "Compaq Center"
    },
    "tour" : {
      "name" : "North American Tour 1964"
    },
    "set" : [ {
      "name" : "...",
      "encore" : 12345,
      "song" : [ { }, { } ]
    }, {
      "name" : "...",
      "encore" : 12345,
      "song" : [ { }, { } ]
    } ],
    "info" : "Recorded and published as 'The Beatles at the Hollywood Bowl'",
    "url" : "https://www.setlist.fm/setlist/the-beatles/1964/hollywood-bowl-hollywood-ca-63de4613.html",
    "id" : "63de4613",
    "versionId" : "7be1aaa0",
    "eventDate" : "23-08-1964",
    "lastUpdated" : "2013-10-20T05:18:08.000+0000"
  }, {
    "artist" : {
      "mbid" : "...",
      "tmid" : 12345,
      "name" : "...",
      "sortName" : "...",
      "disambiguation" : "...",
      "url" : "..."
    },
    "venue" : {
      "city" : { },
      "url" : "...",
      "id" : "...",
      "name" : "..."
    },
    "tour" : {
      "name" : "..."
    },
    "set" : [ {
      "name" : "...",
      "encore" : 12345,
      "song" : [ { }, { } ]
    }, {
      "name" : "...",
      "encore" : 12345,
      "song" : [ { }, { } ]
    } ],
    "info" : "...",
    "url" : "...",
    "id" : "...",
    "versionId" : "...",
    "eventDate" : "...",
    "lastUpdated" : "..."
  } ],
  "total" : 42,
  "page" : 1,
  "itemsPerPage" : 20
}}]
     - parameter userId: (path) the user&#x27;s userId 
     - parameter p: (query) the number of the result page (optional)

     - returns: RequestBuilder<SfmSetlists> 
     */
    open class func getUserAttendedSetlistsGETWithRequestBuilder(userId: String, p: Int? = nil) -> RequestBuilder<SfmSetlists> {
        var path = "/1.0/user/{userId}/attended"
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "p": p?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<SfmSetlists>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
