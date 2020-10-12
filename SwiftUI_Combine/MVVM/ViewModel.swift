//
//  ViewModel.swift
//  SwiftUI_Combine
//
//  Created by twave on 2020/10/08.
//

import Combine
import Foundation

protocol ViewModel : ObservableObject where ObjectWillChangePublisher.Output == Void { //우리의 앱이 변경되기 전에 내보내는 게시자를 포함
    
    //associatedtype 어떤 유형의 타입(String, Int)이 들어와도
    associatedtype State // 특정 뷰의 상태 (래핑 된 모델)
    associatedtype Input // 사용자 작업은 trigger메서드를 사용하여 해당 입력을 트리거
    
    var state : State { get } //특정 뷰의 상태 (래핑 된 모델)
    func trigger(_ input : Input)
}

