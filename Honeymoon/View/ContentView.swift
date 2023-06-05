//
//  ContentView.swift
//  Honeymoon
//
//  Created by M_2195552 on 2023-06-05.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    //@GestureState private var dragState = DragState.inactive
    private var dragAreaThreshold: CGFloat = 65.0
    @State private var lastCardIndex: Int = 1
    @State private var cardRemovalTransition = AnyTransition.trailingBottom
    
    var body: some View {
        VStack {
            // MARK: - Header
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
                //.opacity(dragState.isDragging ? 0.0 : 1.0)
                .animation(.default)
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
