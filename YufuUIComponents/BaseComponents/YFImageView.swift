//
//  YFImageView.swift
//  YufuMobile
//
//  Created by Shuo Wang on 2017/12/23.
//  Copyright © 2017年 Yufu. All rights reserved.
//

import UIKit
import Kingfisher

public class YFImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    public init(frame: CGRect, pictureName: String) {
        super.init(frame: frame)
        self.image = UIImage.init(named: pictureName)
    }

    public init(frame: CGRect, pictureUrl: String) {
        super.init(frame: frame)
        let url = URL.init(string: pictureUrl)
        self.kf.setImage(with: url)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
