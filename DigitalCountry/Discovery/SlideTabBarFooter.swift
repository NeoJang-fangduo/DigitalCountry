//
//  SlideTabBarFooter.swift
//  DigitalCountry
//
//  Created by 倪尛 on 2022/9/13.
//

import UIKit

protocol OnTabTapActionDelegate: NSObjectProtocol {
    func onTapAction (index: Int)
}

class SlideTabBarFooter: UICollectionReusableView {
    var slideLightView:UIView = UIView.init()
    var labels = [UILabel]()
    var itemWidth:CGFloat = 0
    var delegate: OnTabTapActionDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = ColorThemeGrayDark
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setLabel(titles:[String], tabIndex:Int){
        for subview in self.subviews {
            subview.removeFromSuperview()
        }
        labels.removeAll()
        itemWidth = screenWidth/(CGFloat(titles.count))
        for index in 0..<titles.count {
            let title = titles[index]
            let label = UILabel.init()
            label.text = title
            label.textColor = ColorWhiteAlpha60
            label.textAlignment = .center
            label.font = MediumFont
            label.tag = index
            label.isUserInteractionEnabled = true
            let tap = UITapGestureRecognizer.init(target: self, action: #selector(onTapAction(sender:)))
            label.addGestureRecognizer(tap)
            labels.append(label)
            self.addSubview(label)
            label.frame = CGRect.init(x: CGFloat(index) * itemWidth, y: 0, width: itemWidth, height: self.bounds.size.height)
            if(index != titles.count - 1) {
                let spliteLine = UIView.init(frame: CGRect.init(x: CGFloat(index + 1) * itemWidth - 0.25, y: 12.5, width: 0.5, height: self.bounds.size.height - 25.0))
                spliteLine.backgroundColor = ColorWhiteAlpha20
                spliteLine.layer.zPosition = 10
                self.addSubview(spliteLine)
            }
        }
        labels[tabIndex].textColor = ColorWhite
        slideLightView = UIView.init(frame: CGRect.init(x: CGFloat(tabIndex) * itemWidth + 15, y: self.bounds.size.height - 2, width: itemWidth - 30, height: 2))
        slideLightView.backgroundColor = ColorThemeYellow
        self.addSubview(slideLightView)
    }
    
    @objc func onTapAction(sender:UITapGestureRecognizer) {
        let index: Int = sender.view?.tag ?? 0
        if delegate != nil {
            UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.0, options: .curveEaseInOut, animations: {
                var frame = self.slideLightView.frame
                frame.origin.x = self.itemWidth * CGFloat(index) + 15
                self.slideLightView.frame = frame
                for idx in 0..<self.labels.count {
                    let label = self.labels[idx]
                    label.textColor = index == idx ? ColorWhite : ColorWhiteAlpha60
                }
            }) { finished in
                self.delegate?.onTapAction(index: index)
            }
        }
    }
}
