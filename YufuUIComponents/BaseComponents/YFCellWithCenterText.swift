//
//  YFCellWithCenterText.swift
//  YufuMobile
//
//  Created by Shuo Wang on 2018/1/3.
//  Copyright © 2018年 Yufu. All rights reserved.
//

import UIKit

public class YFCellWithCenterText: UITableViewCell {

    public var identifier = "YFCellWithCenterText"

    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(itemNameLabel)
        self.identifier = reuseIdentifier!
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        itemNameLabel.center = contentView.center
    }

    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    public func setCellWithName(itemName: String) {
        itemNameLabel.text = itemName
    }

    // MARK: UI
    lazy private var itemNameLabel: YFTextLabel! = {
        let label = YFTextLabel.init(frame: CGRect(x: (ScreenWidth - 300) / 2, y: 12, width: 300, height: 20),
            text: "项目名称",
            color: "#1F2A33",
            size: 15)
        label.textAlignment = NSTextAlignment.center
        return label
    }()
}
