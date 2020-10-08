//
//  MockBookService.swift
//  SwiftUI_Combine
//
//  Created by twave on 2020/10/08.
//

import Foundation

class MockBookService : BookService {
  
    
    
    //MARK: Mock data
    var books : [Book] = []
    
    var booksDetail : [BookDetail] = []
    
    var cart = Cart(items: [], numberOfItems: 0, total: 0)
    
    //MARK: Book Details
    func bookList() -> [Book] {
        return books
    }
    
    func bookDetails(bookId: Int) -> BookDetail {
        let details = booksDetail.first{$0.bookId == bookId}
        return details!
    }
    
    func numberOfCartItems() -> Int {
        return cart.numberOfItems
    }
    
    func addToCart(bookId: Int) {
        guard let book = (books.first{$0.id == bookId}) else {
            return
        }
        
        //update Cart
        cart.numberOfItems += 1
        cart.total += book.price
//        updateItemCart(book:book)
    }
    
    func cartItems() -> Cart {
        return cart
    }
    
    func checkout() {
        for item in cart.items {
            
        }
        cart = Cart(items: [], numberOfItems: 0, total: 0)
    }
    
    
}
