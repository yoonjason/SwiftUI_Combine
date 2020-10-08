//
//  ContentView.swift
//  SwiftUI_Combine
//
//  Created by twave on 2020/10/08.
//


/*
 View : UI의 레이아웃, 구조 및 모양을 정의합니다. 각 뷰에는 특정 뷰 상태를 제공하는 ViewModel이 있습니다. 뷰는 또한 사용자 상호 작용에 대해 ViewModel에 알립니다.
 
 ViewModel : 모델에 이벤트를 전달하기 위해보기에서 사용하는 입력 개체를 통해 트리거되는 작업을 포함 합니다 . 그들은 또한 모델 포장을 담당합니다. 보기에 액세스 할 수 없습니다.
 
 뷰 모델이라고 해서 데이터를 갖고는 있지만, 직접 가져오지는 않고, View에서 받아온 UI의 액션등을 트리거(연결하거나 암튼 그딴...) 모델 포장을 담당한대
 
 Model :  실제 상태 컨텐츠를 표현하고, 애플리케이션 비즈니스 로직을 구현한다.
 프레젠테이션 레이어(view, viewmodel)과는 독립적이다.
 
 실제 비즈니스로직을 여기서 구현하고, 데이터를 갖고 있는 것은 dataModel이라고 칭하자.
 걍 내 관점에서
 
 실제로 받아올 데이터를 정의한 모델을 모델이라고 하지않고 엔티티라고 한다.
 
 
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
