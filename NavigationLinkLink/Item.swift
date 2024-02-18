//
//  Item.swift
//  NavigationLinkLink
//
//  Created by Hiroshi IMAJO on 2024/02/18.
//

import Foundation

// データを格納する構造体
struct Item {
    // var image: UIImage? = nil    // 写真を格納する画像のつもり
    var english = ""    // 英文のつもり
    var japanese = ""   // 日本語訳のつもり
}

class ItemManager {
    // 複数のデータを保持する配列
    var items: [Item] = []

    // イニシャライザ（仮のデータを作成し、配列に入れている）
    init() {
        items = [
            Item(english: "Item #0", japanese: "アイテム #0"),
            Item(english: "Item #1", japanese: "アイテム #1"),
            Item(english: "Item #2", japanese: "アイテム #2"),
            Item(english: "Item #3", japanese: "アイテム #3"),
            Item(english: "Item #4", japanese: "アイテム #4")
        ]
    }
}
