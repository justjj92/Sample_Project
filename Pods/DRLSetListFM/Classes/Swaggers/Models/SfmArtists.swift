//
// SfmArtists.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A Result consisting of a list of artists. */

public struct SfmArtists: Codable {

    /** result list of artists */
    public var artist: [SfmArtist]?
    /** the total amount of items matching the query */
    public var total: Decimal?
    /** the current page. starts at 1 */
    public var page: Decimal?
    /** the amount of items you get per page */
    public var itemsPerPage: Decimal?

    public init(artist: [SfmArtist]? = nil, total: Decimal? = nil, page: Decimal? = nil, itemsPerPage: Decimal? = nil) {
        self.artist = artist
        self.total = total
        self.page = page
        self.itemsPerPage = itemsPerPage
    }


}
