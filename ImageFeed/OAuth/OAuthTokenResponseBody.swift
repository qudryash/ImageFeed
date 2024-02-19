//
//  OAuthTokenResponseBody.swift
//  ImageFeed
//
//  Created by Kudryashov Andrey on 17.02.2024.
//

import Foundation

struct OAuthTokenResponseBody: Decodable {
    let accessToken: String
    private let tokenType: String
    private let scope: String
    private let createdAt: Int
    
    private enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case tokenType = "token_type"
        case scope
        case createdAt = "created_at"
    }
}
