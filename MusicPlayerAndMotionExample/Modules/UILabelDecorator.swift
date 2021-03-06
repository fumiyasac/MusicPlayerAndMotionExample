//
//  UILabelDecorator.swift
//  MusicPlayerAndMotionExample
//
//  Created by 酒井文也 on 2021/12/02.
//

import Foundation
import UIKit

final class UILabelDecorator {

    // MARK: - Typealias

    typealias KeysForDecoration = (lineSpacing: CGFloat, font: UIFont, foregroundColor: UIColor)

    // MARK: - Static Function

    // 該当のUILabelに付与する属性を設定する
    static func getLabelAttributesBy(keys: KeysForDecoration) -> [NSAttributedString.Key : Any] {

        // 行間に関する設定をする
        // MEMO: lineBreakModeの指定しないとはみ出た場合の「...」が出なくなる
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = keys.lineSpacing
        paragraphStyle.lineBreakMode = .byTruncatingTail

        // 上記で定義した行間・フォント・色を属性値として設定する
        var attributes: [NSAttributedString.Key : Any] = [:]
        attributes[NSAttributedString.Key.paragraphStyle] = paragraphStyle
        attributes[NSAttributedString.Key.font] = keys.font
        attributes[NSAttributedString.Key.foregroundColor] = keys.foregroundColor

        return attributes
    }
}
