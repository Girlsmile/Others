//
//  LandmarksRow.swift
//  Landmarks
//
//  Created by flow on 1.7.22.
//

import SwiftUI

struct LandmarksRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
           
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarksRow_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            LandmarksRow(landmark:  landmarks[0])
            LandmarksRow(landmark:  landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
       
    }
}
