//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by flow on 1.7.22.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        }
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                                    Text(landmark.name)
                                        .font(.title)
                                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                                }
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.description)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text(landmark.park)
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct LandmarkDetail_Previews: PreviewProvider {
    
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
                    .environmentObject(modelData)
    }
}
