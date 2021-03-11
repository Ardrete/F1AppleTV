//
//  EpisodeDto.swift
//  F1TV
//
//  Created by Noah Fetz on 25.10.20.
//

import Foundation

struct EpisodeDto: Codable {
    var imageUrls: [String]
    var items: [String]
    var uid: String
    var dataSourceId: String
    var title: String
    var slug: String
    var synopsis: String
    var subtitle: String

    init() {
        self.imageUrls = [String]()
        self.items = [String]()
        self.uid = ""
        self.dataSourceId = ""
        self.title = ""
        self.slug = ""
        self.synopsis = ""
        self.subtitle = ""
    }
    
    init(imageUrls: [String], items: [String], uid: String, dataSourceId: String, title: String, slug: String, synopsis: String, subtitle: String) {
        self.imageUrls = imageUrls
        self.items = items
        self.uid = uid
        self.dataSourceId = dataSourceId
        self.title = title
        self.slug = slug
        self.synopsis = synopsis
        self.subtitle = subtitle
    }
    
    enum CodingKeys: String, CodingKey {
        case imageUrls = "image_urls"
        case items = "items"
        case uid = "uid"
        case dataSourceId = "data_source_id"
        case title = "title"
        case slug = "slug"
        case synopsis = "synopsis"
        case subtitle = "subtitle"
    }
}
