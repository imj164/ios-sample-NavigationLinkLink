//
//  ItemView.swift
//  NavigationLinkLink
//
//  Created by Hiroshi IMAJO on 2024/02/18.
//

import SwiftUI

// データ表示画面
struct ItemView: View {
    // 画面を閉じ、遷移前の画面に戻るための環境変数を定義
    @Environment(\.dismiss) private var dismiss

    // 引数として受け取る管理クラスと、表示対象にするデータのインデックス
    var manager: ItemManager
    var index: Int
    
    // ビュー本体
    var body: some View {
        // データを表示する部分
        VStack(alignment: .leading) {
            Text(manager.items[index].english)
            Text(manager.items[index].japanese)
        }
        .padding()
        // ツールバー（ナビゲーションビューの上部に表示される）の表示モードを指定
        .toolbarTitleDisplayMode(.inline)
        // ツールバーを定義
        .toolbar {
            // ツールバーに、閉じる（前の画面に戻る）ボタンを配置、ただし前の画面がある（インデックスが0より大きい）場合のみ
            if index > 0 {
                // 画面上部の左端に閉じるボタンを配置
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        // 画面を閉じる（前の画面に戻る）
                        dismiss()
                    }) {
                        Text("前へ(閉じる)")
                    }
                }
            }
            // ツールバーに、次のデータ表示画面へ遷移するリンクを配置、ただし次の画面がある（インデックスがデータ数から1つ少ない数の）場合のみ
            if index <= manager.items.count - 1 {
                // 画面上部の右端にナビゲーションリンクを配置
                ToolbarItem(placement: .topBarTrailing) {
                    // タップすると「次のインデックス」を指定してデータ表示画面へ遷移する
                    NavigationLink(destination: ItemView(manager: manager, index: index + 1)) {
                        Text("次へ")
                    }
                }
            }
        }
        // ナビゲーションビュー上部に自動的に表示される「< Back」を表示させないよう設定
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ItemView(manager: ItemManager(), index: 0)
}
