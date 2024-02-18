//
//  ContentView.swift
//  NavigationLinkLink
//
//  Created by Hiroshi IMAJO on 2024/02/18.
//

import SwiftUI

// メイン画面
struct ContentView: View {
    // 複数のデータを管理するクラス
    private var itemManager = ItemManager()

    // ビュー本体
    var body: some View {
        // 全体を囲むNavigationView、この配下に配置されるビューに付けたNavigationLinkが機能する
        NavigationView {
            // データが存在する（配列の要素数が0より大きい）場合は、データ表示画面を表示
            if itemManager.items.count > 0 {
                ItemView(manager: itemManager, index: 0)
            } else {
                // データがない場合は、No Dataと表示
                Text("No Data")
            }
        }
    }
}

#Preview {
    ContentView()
}
