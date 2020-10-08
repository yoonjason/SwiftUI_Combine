//
//  ViewModel.swift
//  SwiftUI_Combine
//
//  Created by twave on 2020/10/08.
//

import Combine
import Foundation

protocol ViewModel : ObservableObject where ObjectWillChangePublisher.Output == Void { //우리의 앱이 변경되기 전에 내보내는 게시자를 포함
    associatedtype State // 특정 뷰의 상태 (래핑 된 모델)
    associatedtype Input
    
    var state : State { get }
    func trigger(_ input : Input)
}
