//
//  YFCellWithSwitch.swift
//  YufuMobile
//
//  Created by Shuo Wang on 2018/1/3.
//  Copyright © 2018年 Yufu. All rights reserved.
//

import UIKit

public class YFCellWithSwitch: UITableViewCell {

    public var identifier = "YFCellWithSwitch"

    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = UITableViewCellSelectionStyle.none
        self.contentView.addSubview(itemNameLabel)
        self.contentView.addSubview(switchButton)
        self.identifier = reuseIdentifier!
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        itemNameLabel.center.y = contentView.center.y
        switchButton.center.y = contentView.center.y
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    public func setCellWithName(itemName: String, switchAction: Selector, switchIsOn: Bool) {
        itemNameLabel.text = itemName
        switchButton.addTarget(nil, action: switchAction, for: UIControlEvents.valueChanged)
        switchButton.isOn = switchIsOn
    }

    // MARK: UI
    lazy private var itemNameLabel: YFTextLabel! = {
        let label = YFTextLabel.init(frame: CGRect(x: 15, y: 0, width: 200, height: 21),
            text: "项目名称",
            color: "#1F2A33",
            size: 15)
        label.textAlignment = NSTextAlignment.left
        return label
    }()

    lazy private var switchButton: UISwitch! = {
        let switchButton = UISwitch.init(frame: CGRect.init(x: ScreenWidth - 50 - 15, y: 0, width: 50, height: 30))
        switchButton.onTintColor = UIColor(hexString: "#42769E")
        return switchButton
    }()
}
