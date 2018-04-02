//
//  YFSeparateLine.swift
//  YufuMobile
//
//  Created by Shuo Wang on 2017/12/23.
//  Copyright © 2017年 Yufu. All rights reserved.
//

import UIKit

public class YFSeparateLine: UIView {

    public init(frame: CGRect, color: String) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(hexString: color)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
