//
//  YFTextField.swift
//  YufuMobile
//
//  Created by Shuo Wang on 2017/12/23.
//  Copyright © 2017年 Yufu. All rights reserved.
//

import UIKit

public class YFTextField: UITextField {

    public init(frame: CGRect,
        placeHolderText: String,
        placeHolderColor: String,
        placeHolderTextSize: CGFloat) {

        super.init(frame: frame)
        self.placeholder = placeHolderText
        self.attributedPlaceholder = NSAttributedString.init(string: placeHolderText, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: placeHolderTextSize), NSAttributedStringKey.foregroundColor: UIColor(hexString: placeHolderColor)
            ])
        //By default, disable auto correct and first letter capitalizing
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
