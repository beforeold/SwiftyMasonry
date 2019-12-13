
#SwiftyMasonry.swift


make calling masonry swifty


turn old style masonry into swit style
// before
```Swift

tipLabel.mas_makeConstraints { (make) in
    make?.top.mas_equalTo()(imageV.mas_bottom)?.offset()(10)
    make?.left.mas_equalTo()(5)
    make?.right.mas_equalTo()(-5)
    make?.bottom.mas_equalTo()(-25)
}

```
// after
```Swift
searchBar.xp.makeConstraints { (make) in
    make.top.offset(0).end
    make.leading.offset(kMargin).end
    make.trailing.offset(-kMargin).end
    make.height.mas_equalTo(searchBarHeight).end
}
```
