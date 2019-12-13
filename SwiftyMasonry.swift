//   
//   SwiftyMasonry.swift
//   Brook
//   
//   Created  by Brook on 2019/8/14
//   Modified by Brook
//   Copyright © 2019年 Brook. All rights reserved.
//   
   

import UIKit

// 照搬了 Masonry 的实现
extension XPWrapper where Wrapped: UIView {
    @discardableResult
    func makeConstraints(_ closure: (_ make: MASConstraintMaker) -> Void) -> [MASConstraint] {
        self.wrapped.translatesAutoresizingMaskIntoConstraints = false;
        let constraintMaker = MASConstraintMaker(view: self.wrapped)!
        closure(constraintMaker);
        
        return constraintMaker.install() as! [MASConstraint]
    }
    
    @discardableResult
    func updateConstraints(_ closure: (_ make: MASConstraintMaker) -> Void) -> [MASConstraint] {
        self.wrapped.translatesAutoresizingMaskIntoConstraints = false;
        let constraintMaker = MASConstraintMaker(view: self.wrapped)!
        constraintMaker.updateExisting = true
        closure(constraintMaker);
        
        return constraintMaker.install() as! [MASConstraint]
    }
    
    @discardableResult
    func remakeConstraints(_ closure: (_ make: MASConstraintMaker) -> Void) -> [MASConstraint] {
        self.wrapped.translatesAutoresizingMaskIntoConstraints = false;
        let constraintMaker = MASConstraintMaker(view: self.wrapped)!
        constraintMaker.removeExisting = true
        closure(constraintMaker);
        
        return constraintMaker.install() as! [MASConstraint]
    }
}

extension Optional where Wrapped: MASConstraint {
    var insets: ((UIEdgeInsets) -> MASConstraint?)! {
        return self?.insets()
    }
    
    var inset: ((CGFloat) -> MASConstraint?)! {
        return self?.inset()
    }
    
    var sizeOffset: ((CGSize) -> MASConstraint?)! {
        return self?.sizeOffset()
    }
    
    var offset: ((CGFloat) -> MASConstraint?)! {
        return self?.offset()
    }
    
    var valueOffset: ((NSValue) -> MASConstraint?)! {
        return self?.valueOffset()
    }
    
    var multipliedBy: ((CGFloat) -> MASConstraint?)! {
        return self?.multipliedBy()
    }
    
    var dividedBy: ((CGFloat) -> MASConstraint?)! {
        return self?.dividedBy()
    }
    
    var priority: ((MASLayoutPriority) -> MASConstraint?)! {
        return self?.priority()
    }
    
    var priorityLow: (() -> MASConstraint?)! {
        return self?.priorityLow()
    }
    
    var priorityMedium: (() -> MASConstraint?)! {
        return self?.priorityMedium()
    }
    
    var priorityHigh: (() -> MASConstraint?)! {
        return self?.priorityHigh()
    }
    
    var equalTo: ((Any?) -> MASConstraint?)! {
        return self?.equalTo()
    }
    
    var greaterThanOrEqualTo: ((Any?) -> MASConstraint?)! {
        return self?.greaterThanOrEqualTo()
    }
    
    var lessThanOrEqualTo: ((Any?) -> MASConstraint?)! {
        return self?.lessThanOrEqualTo()
    }
    
    var with: MASConstraint! {
        return self?.with()
    }
    
    var and: MASConstraint! {
        return self?.and()
    }
    
    var left: MASConstraint! {
        return self?.left()
    }
    
    var top: MASConstraint! {
        return self?.top()
    }
    
    var right: MASConstraint! {
        return self?.right()
    }
    
    var bottom: MASConstraint! {
        return self?.bottom()
    }
    
    var leading: MASConstraint! {
        return self?.leading()
    }
    
    var trailing: MASConstraint! {
        return self?.trailing()
    }
    
    var width: MASConstraint! {
        return self?.width()
    }
    
    var height: MASConstraint! {
        return self?.height()
    }
    
    var centerX: MASConstraint! {
        return self?.centerX()
    }
    
    var centerY: MASConstraint! {
        return self?.centerY()
    }
    
    var baseline: MASConstraint! {
        return self?.baseline()
    }
    
    var firstBaseline: MASConstraint! {
        return self?.firstBaseline()
    }
    
    var lastBaseline: MASConstraint! {
        return self?.lastBaseline()
    }
    
    var leftMargin: MASConstraint! {
        return self?.leftMargin()
    }
    
    var rightMargin: MASConstraint! {
        return self?.rightMargin()
    }
    
    var topMargin: MASConstraint! {
        return self?.topMargin()
    }
    
    var bottomMargin: MASConstraint! {
        return self?.bottomMargin()
    }
    
    var leadingMargin: MASConstraint! {
        return self?.leadingMargin()
    }
    
    var trailingMargin: MASConstraint! {
        return self?.trailingMargin()
    }
    
    var centerXWithinMargins: MASConstraint! {
        return self?.centerXWithinMargins()
    }
    
    var centerYWithinMargins: MASConstraint! {
        return self?.centerYWithinMargins()
    }
    
    var key: ((Any?) -> MASConstraint?)! {
        return self?.key()
    }
    
    
    var mas_equalTo: ((Any?) -> MASConstraint?)! {
        return self?.mas_equalTo()
    }
    
    var mas_greaterThanOrEqualTo: ((Any?) -> MASConstraint?)! {
        return self?.mas_greaterThanOrEqualTo()
    }
    
    var mas_lessThanOrEqualTo: ((Any?) -> MASConstraint?)! {
        return self?.mas_lessThanOrEqualTo()
    }
    
    var mas_offset: ((Any?) -> MASConstraint?)! {
        return self?.mas_offset()
    }
    
    var end: Void { return () }
}
