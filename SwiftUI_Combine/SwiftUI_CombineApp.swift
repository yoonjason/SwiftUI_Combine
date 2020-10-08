//
//  SwiftUI_CombineApp.swift
//  SwiftUI_Combine
//
//  Created by twave on 2020/10/08.
//

import SwiftUI

class AppDelegate : NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print(#function)
        return true
    }
}

@main
struct SwiftUI_CombineApp: App {
    @Environment(\.scenePhase) private var scenePhase
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    /*
     AppDelegate클래스는 우리의 응용 프로그램의 중요한 부분을 형성한다. 알림을 처리하든 Firebase를 구성하든 다양한 수명주기 방법으로 중요한 역할을합니다.
     AppDelegate기능 을 연결하려면 UIApplicationDelegate지금까지 순수한 SwiftUI 애플리케이션이었던 UIKit (를 준수하기 위해 )을 다시 가져와야합니다. SwiftUI는 SwiftUI 구조에 인스턴스를 UIApplicationDelegateAdaptor삽입 할 수 있는 새로운 속성 래퍼 를 제공합니다 AppDelegate.
     */
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase){ phase in
            if phase == .background {
                
            }
        }
        
    }
}
