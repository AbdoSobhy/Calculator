//
//  BrainCalculator.swift
//  Advanved Calculator
//
//  Created by Abdelrahman Sobhy on 4/11/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import Foundation


class BrainCalculator {
    typealias calcElement = (num : Double , Operation : Character)
    private var arrayOfTypes : [calcElement] = []
    
    func add(number : Double , with opperator : Character) {
        arrayOfTypes.append(calcElement(num : number , Operation : opperator))
    }
    
    func calcMaltiplyAndDivasion(){
        for (index,curent) in arrayOfTypes.enumerated() {
            if curent.Operation == "X" || curent.Operation == "/"{
                let afterCurent = arrayOfTypes[index + 1]
                var newResult : calcElement!
                
                if curent.Operation == "X" {
                    newResult = (curent.num * afterCurent.num,afterCurent.Operation)
                    
                } else if curent.Operation == "/" {
                    newResult = (curent.num / afterCurent.num,afterCurent.Operation)
                }
                /// remove first index
                arrayOfTypes.remove(at: index)
                /// remove socond index
                arrayOfTypes.remove(at: index)
                /// add new result of opration
                arrayOfTypes.insert(newResult, at: index)
                calcMaltiplyAndDivasion()
                break
            }
        }
    }
    
    func calcMinuses(){
        for (index,curent) in arrayOfTypes.enumerated() {
            if curent.Operation == "-"{
                let afterCurent = arrayOfTypes[index + 1]
                let newResult : calcElement = (curent.num - afterCurent.num,"+")
                /// remove first index
                arrayOfTypes.remove(at: index)
                /// remove socond index
                arrayOfTypes.remove(at: index)
                /// add new result of opration
                arrayOfTypes.insert(newResult, at: index)
                calcMinuses()
                break
            }
        }
    }
    
    func calcResult() -> String {
        calcMaltiplyAndDivasion()
        calcMinuses()
        return String(arrayOfTypes.reduce(0, {$0 + $1.num}))
    }
    
    func restart() {
        arrayOfTypes = []
    }
    
    //    close class bracket
}
