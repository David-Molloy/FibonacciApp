//
//  FibonacciSequence.swift
//  FibonacciApp
//
//  Created by David Molloy on 23/03/2015.
//  Copyright (c) 2015 riis. All rights reserved.
//

import Foundation


class FibonacciSequence {
    
    let includesZero: Bool
    let values: [UInt64]
    
    init(maxNumber: UInt64, includesZero: Bool) {
        self.includesZero = includesZero
        self.values = []
        if(maxNumber == 0){
            if(!self.includesZero){
                self.values.append(1)
            }else{
                self.values.append(0)
            }
        }else if(maxNumber == 1){
            if(!self.includesZero){
                self.values.append(1)
            }else{
                self.values.append(0)
            }
        }else{
            if(!self.includesZero){
                self.values.append(1)
                self.values.append(1)
            }else{
                self.values.append(0)
                self.values.append(1)
            }
            var i:UInt64 = 2;
            while(self.values[i-2] + self.values[i-1] < maxNumber){
                
                let (nextNumber, didOverflow) = UInt64.addWithOverflow(self.values[i-2], self.values[i-1])
                
                if didOverflow == true{
                    println("Overflow! The next number is too large")
                    break
                }else{
                    self.values.append(nextNumber)
                    i++
                }
            }
        }
    }
    
    init(numberOfItemsInSequence: UInt64, includesZero: Bool) {
        self.includesZero = includesZero
        self.values = []
        if(numberOfItemsInSequence == 0){
            if(!self.includesZero){
                self.values.append(1)
            }else{
                self.values.append(0)
            }
        }else if(numberOfItemsInSequence == 1){
            if(!self.includesZero){
                self.values.append(1)
            }else{
                self.values.append(0)
            }
        }else{
            if(!self.includesZero){
                self.values.append(1)
                self.values.append(1)
            }else{
                self.values.append(0)
                self.values.append(1)
            }
            
            for(var i:UInt64=2;i<numberOfItemsInSequence;i++){
                
                let (nextNumber, didOverflow) = UInt64.addWithOverflow(self.values[i-2], self.values[i-1])
                
                if didOverflow == true{
                    println("Overflow! The next number is too large")
                    break
                }else{
                    self.values.append(nextNumber)
                }
            }
        }
    }
}