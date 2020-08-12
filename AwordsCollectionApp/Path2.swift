//
//  Path2.swift
//  AwordsCollectionApp
//
//  Created by Aleksandr Kurdiukov on 12.08.20.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct Path2: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let size = min(geometry.size.width, geometry.size.height)
                let nearLine = size * 0.1
                let farLine = size * 0.9
                
                path.move(to: CGPoint(x: size / 2, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: size / 2, y: nearLine))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
   
            
            Color(.black)
                .frame(width: geometry.size.width/10 , height: geometry.size.width/10, alignment: .leading)
            
            Color(.black)
                .frame(width: geometry.size.width/10 , height: geometry.size.width/10, alignment: .trailing)
                .offset(x: geometry.size.width * 0.9)
            
            Color(.red)
            .frame(width: geometry.size.width/5 , height: geometry.size.width/5)
                .offset(x: geometry.size.width * 0.4, y: geometry.size.height * 0.4)
            
            Color(.white)
                .cornerRadius(geometry.size.width/10)
            
                 .frame(width: geometry.size.width/10 , height: geometry.size.width/10)
                     .offset(x: geometry.size.width * 0.45, y: geometry.size.height * 0.45)
            
            Color(.black)
             .frame(width: geometry.size.width , height: geometry.size.width/5)
                 .offset(y: geometry.size.height * 0.8)
            
            Path { path in
                   let size = min(geometry.size.width, geometry.size.height)
                   
                   path.move(to: CGPoint(x: 0, y: size))
                   path.addLine(to: CGPoint(x: size, y: size * 0.8))
                   path.addLine(to: CGPoint(x: size, y: size))
                path.addLine(to: CGPoint(x: 0, y: size))
                path.addLine(to: CGPoint(x: 0, y: size*0.8))
                path.addLine(to: CGPoint(x: size, y: size))
               }
               .stroke(Color.white,
                       style: StrokeStyle(
                           lineWidth: 3,
                           dash: [geometry.size.height / 20])
               )

        }
    }
}

struct Path2_Previews: PreviewProvider {
    static var previews: some View {
        Path2()
            .frame(width: 200, height: 200)
    }
}

