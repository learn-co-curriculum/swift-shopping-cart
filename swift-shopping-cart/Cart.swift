//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items: [Item] = []
    
    func totalPriceInCents() -> Int {
        var sum = 0
        for item in items {
            sum += item.priceInCents
        }
        return sum
    }
    
    func add(item: Item) {
        items.append(item)
    }
    
    func remove(item: Item) {
        for (index, it) in items.enumerated() {
            if it == item {
                items.remove(at: index)
            }
        }
    }
    
    func items(withName name: String) -> [Item]{
        var itemArray: [Item] = []
        for item in items {
            if item.name == name {
                itemArray.append(item)
            }
        }
        return itemArray
    }
    
    func items(withMinPrice price: Int) -> [Item] {
        var itemArray: [Item] = []
        for item in items {
            if item.priceInCents >= price {
                itemArray.append(item)
            }
        }
        
        return itemArray
    }
    
    func items(withMaxPrice price: Int) -> [Item] {
        var itemArray: [Item] = []
        for item in items {
            if item.priceInCents <= price {
                itemArray.append(item)
            }
        }
        return itemArray
    }
    
}









