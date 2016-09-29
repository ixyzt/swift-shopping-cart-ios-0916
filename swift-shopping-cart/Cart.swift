//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//



class Cart {
    var items: [Item]
    var price: Int = 0
    
    init(items: [Item]) {
        self.items = items
    }
    
    convenience init() {
        self.init(items: [])
    }
    
    func totalPriceInCents() -> Int {
        var totalPriceInCents: Int = 0
        for each in items {
            totalPriceInCents += each.priceInCents
        }
        return totalPriceInCents
    }
    
    func add(item: Item) {
        let newItem = Item.init(name: item.name, priceInCents: item.priceInCents)
        items.append(newItem)
    }
    
    func remove(item: Item) {
        let removedItem = item
        for (index, item) in items.enumerated() {
            if item.name == removedItem.name && item.priceInCents == removedItem.priceInCents {
                items.remove(at: index)
            }
        }
    }
    
    func items(withName name: String) -> [Item]{
        
        var itemsWithSameName = [Item]()
        for item in items {
            if item.name == name {
                itemsWithSameName.append(item)
            }
        }
        return itemsWithSameName
    }
    
    func items(withMinPrice: Int) -> [Item] {
        
        var itemsWithMinPrice = [Item]()
        for item in items {
            if item.priceInCents >= withMinPrice {
                itemsWithMinPrice.append(item)
            }
        }
        return itemsWithMinPrice
    }
    
    func items(withMaxPrice: Int) -> [Item] {
        
        var itemsWithMaxPrice = [Item]()
        for item in items {
            if item.priceInCents <= withMaxPrice {
                itemsWithMaxPrice.append(item)
            }
        }
        return itemsWithMaxPrice
    }
    
    
    
}
