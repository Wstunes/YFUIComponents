//
//  YFTextLabel.swift
//  YufuMobile
//
//  Created by Shuo Wang on 2017/12/23.
//  Copyright © 2017年 Yufu. All rights reserved.
//

import UIKit

public class YFTextLabel: UILabel {

    public init(frame: CGRect, text: String, color: String, size: CGFloat) {
        super.init(frame: frame)
        self.text = text
        self.textColor = UIColor(hexString: color)
        self.font = self.font.withSize(size)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
