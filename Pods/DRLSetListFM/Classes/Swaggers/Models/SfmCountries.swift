//
// SfmCountries.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A Result consisting of a list of countries. */

public struct SfmCountries: Codable {

    /** result list of countries */
    public var country: [SfmCountry]?
    /** the total amount of items matching the query */
    public var total: Decimal?
    /** the current page. starts at 1 */
    public var page: Decimal?
    /** the amount of items you get per page */
    public var itemsPerPage: Decimal?

    public init(country: [SfmCountry]? = nil, total: Decimal? = nil, page: Decimal? = nil, itemsPerPage: Decimal? = nil) {
        self.country = country
        self.total = total
        self.page = page
        self.itemsPerPage = itemsPerPage
    }


}
