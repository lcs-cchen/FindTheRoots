//
//  RootsCalculatorView.swift
//  FindTheRoots
//
//  Created by Cyrus Chen on 24/1/2023.
//

import SwiftUI

struct RootsCalculatorView: View {
    @State var a: Double = 0
    @State var b: Double = 0
    @State var c: Double = 0
    
    var result: String{
        let discrimenent = b * b - 4 * a * c
        
        if discrimenent < 0 {
            return "No Real Roots"
        } else{
            let x1 = (b * -1 - discrimenent.squareRoot() ) / (2 * a)
            let x2 = (b * -1 + discrimenent.squareRoot() ) / (2 * a)
            
            return "x ≈ \(x1.formatted(.number.precision(.fractionLength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
    }
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                
                Group{
                    
                    HStack{
                        
                        Text("Find the Roots")
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                        
                        Spacer()
                        
                    }
                    .padding(.horizontal,50)
                    .padding(.top)
                    
                    Image("QuadraticEquation")
                        .resizable()
                        .scaledToFit()
                        .frame(width:450, height: 110)
                    
                    
                    Image("Quadratic")
                        .resizable()
                        .scaledToFit()
                        .frame(width:220, height: 110)
                        .padding(.top, -10)
                }
                HStack{
                    Spacer()
                    VStack{
                        Text("a:\(a.formatted(.number.precision(.fractionLength(1))))")
                        
                        Slider(value: $a, in: -50...50,
                               label: {Text("Length")})
                        .frame(width: 100)
                    }
                    Spacer()
                    VStack{
                        
                        Text("b:\(b.formatted(.number.precision(.fractionLength(1))))")
                        
                        Slider(value: $b, in: -50...50,
                               label: {Text("Length")})
                        .frame(width: 100)
                        
                        
                    }
                    Spacer()
                    VStack{
                        
                        Text("c:\(c.formatted(.number.precision(.fractionLength(1))))")
                        
                        Slider(value: $c, in: -50...50,
                               label: {Text("Length")})
                        .frame(width: 100)
                        
                    }
                    Spacer()
                    
                }
                .foregroundColor(.white)
                .font(Font.custom("Times New Roman",
                                  size: 24.0,
                                  relativeTo: .body))
                .padding(.horizontal,20)
                
                Text("\(result)")
                    .foregroundColor(.white)
                    .font(Font.custom("Times New Roman",
                                      size: 24.0,
                                      relativeTo: .body))
                    .padding(.horizontal,20)
                
                Spacer()
                
                
            }
            
        }
    }
}

struct RootsCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        RootsCalculatorView()
    }
}
