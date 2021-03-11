//
//  SeasonDto.swift
//  F1TV
//
//  Created by Noah Fetz on 24.10.20.
//

import Foundation

struct SeasonDto: Codable {
    var eventOccurrenceUrls: [String]
    var uid: String
    var year: Int
    var hasContent: Bool
    var name: String

    init() {
        self.eventOccurrenceUrls = [String]()
        self.uid = ""
        self.year = 0
        self.hasContent = false
        self.name = ""
    }
    
    init(eventOccurrenceUrls: [String], uid: String, year: Int, hasContent: Bool, name: String) {
        self.eventOccurrenceUrls = eventOccurrenceUrls
        self.uid = uid
        self.year = year
        self.hasContent = hasContent
        self.name = name
    }
    
    enum CodingKeys: String, CodingKey {
        case eventOccurrenceUrls = "eventoccurrence_urls"
        case uid = "uid"
        case year = "year"
        case hasContent = "has_content"
        case name = "name"
    }
}
