//
//  hospitalData.swift
//  myPractice
//
//  Created by 이수연 on 2021/07/08.
//

import Foundation

struct hospitalData: Decodable{
    let currentCount: Int
    let data: [Data]
    
    /*init(json: [String: Any]){
        currentCount = json["currentCount"] as? Int ?? 0
        data = json["data"] as? Array ?? []
    }*/
}

struct Data: Decodable{
    var orgcd: String
    var orgnm: String
    var orgTlno: String
    var orgZipaddr: String
    var slrYmd: String
    var dywk: String
    var hldyYn: String
    var lunchSttTm: String?
    var lunchEndTm: String?
    var sttTm: String?
    var endTm: String?
    enum CodingKeys : String, CodingKey{
        case orgcd
        case orgnm
        case orgTlno
        case orgZipaddr
        case slrYmd
        case dywk
        case hldyYn
        case lunchSttTm
        case lunchEndTm
        case sttTm
        case endTm
    }
}
