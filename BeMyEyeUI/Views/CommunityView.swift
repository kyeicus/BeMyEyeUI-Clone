//
//  CommunityView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 4/15/22.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        
        VStack{
            
            ScrollView( showsIndicators: true) {
                HStack {
                    Image(systemName: "house")
                    Image(systemName: "house")
                    Image(systemName: "house")
                    Image(systemName: "house")
                    Image(systemName: "house")
                }.font(Font.system(size: 70))
            }
        }
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
