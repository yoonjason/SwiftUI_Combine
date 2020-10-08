//
//  BookService.swift
//  SwiftUI_Combine
//
//  Created by twave on 2020/10/08.
//

import Foundation


//모든 사용 사례를 서비스로 그룹화 한다.
//모든 데이터 액세스 및 캐싱을 포함하는 책임이다.
protocol BookService {
    
    //BookList
    func bookList() -> [Book] //스토어 앱에서 판매중인 도서 목록
    
    //BookDetail
    func bookDetails(bookId : Int) -> BookDetail //책 아이디로 책 정보 조회
    func numberOfCartItems() -> Int //카트에 담긴 책의 갯수
    func addToCart(bookId : Int) //책 아이디로 카트에 넣기
    
    //Cart
    func cartItems() -> Cart //사용자 카트와 관련된 모든 세부 정보를 제공
    func checkout() //체크 아웃이 올바르게 완료 즉, 선택한 모든 책을 사용 가능한 것으로 표시하고 장바구니를 비웁니다  즉 결제
}
