//
//  User.swift
//  TimeSchedule
//
//  Created by yukihiro moriyama on 2016/04/13.
//  Copyright © 2016年 YukihiroMoriyama. All rights reserved.
//

import RealmSwift

// モデル定義
class User: Object {
    dynamic var id = 0
    dynamic var name = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
