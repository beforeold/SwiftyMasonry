//   
//   XPCompatible.swift
//   Brook
//   
//   Created  by Brook on 2019/8/14
//   Modified by Brook
//   Copyright © 2019年 Brook. All rights reserved.
//   
   

import Foundation

struct XPWrapper<Wrapped> {
    let wrapped: Wrapped
    
    init(_ wrapped: Wrapped) {
        self.wrapped = wrapped
    }
}

protocol XPCompatible {
    associatedtype ToBeCompatible
    
    var xp: XPWrapper<ToBeCompatible> { get }
    
    // 参考 RxSwift，对比 XPWrapper<Self.Type> 的声明 减少一个类型的存在
    // 并且不依赖 base 成员，直接使用 Wrapped 类型即可
    static var xp: XPWrapper<ToBeCompatible>.Type { get }
}

extension XPCompatible {
    var xp: XPWrapper<Self> {
        return XPWrapper(self)
    }
    
    static var xp: XPWrapper<Self>.Type {
        return XPWrapper<Self>.self
    }
}

extension UIView: XPCompatible { }
extension XMRequest: XPCompatible { }
extension CALayer: XPCompatible {}

// 如有需要其他扩展，可以对 XploHelper 进行 extension，而不是在原类上写 extension
// 举例参考本项目中的 Masonry+XPAdditions.swift
