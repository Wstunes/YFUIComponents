//
//  YFButton.swift
//  YufuMobile
//
//  Created by Shuo Wang on 2017/12/23.
//  Copyright © 2017年 Yufu. All rights reserved.
//

import UIKit

public class YFButton: UIButton {

    public init(frame: CGRect, color: String, title: String) {
        super.init(frame: frame)
        self.setTitle(title, for: UIControlState.normal)
        self.backgroundColor = UIColor(hexString: color)
        self.layer.cornerRadius = 4
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
