//
//  GlobalTabBarItems.swift
//  MusicPlayerAndMotionExample
//
//  Created by 酒井文也 on 2021/09/11.
//

import Foundation

enum GlobalTabBarItems: CaseIterable {
    case main
    case photo

    // 配置するタイトルを取得する
    func getTabBarTitle() -> String {
        switch self {
        case .main:
            return "メイン画面"
        case .photo:
            return "フォト画面"
        }
    }

    // 配置するSF Symbolsのアイコン名前を取得する
    func getTabBarSymbolName() -> String {
        switch self {
        case .main:
            return "music.note.house.fill"
        case .photo:
            return "photo.fill.on.rectangle.fill"
        }
    }
}
