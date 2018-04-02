//
//  YFWebView.swift
//  YufuMobile
//
//  Created by Shuo Wang on 2018/1/10.
//  Copyright © 2018年 Yufu. All rights reserved.
//

import UIKit

public class YFWebView: UIWebView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.isOpaque = false
        self.backgroundColor = UIColor.white
        self.scalesPageToFit = true
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
