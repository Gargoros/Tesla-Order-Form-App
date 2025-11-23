//
//  FormView.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import SwiftUI
import Combine

struct FormView: View {
    @EnvironmentObject var order: OrderViewModel

    
    init() {
        UITableView.appearance().sectionHeaderHeight = 0
        UITableView.appearance().sectionFooterHeight = 10
        UITableView.appearance().backgroundColor = .clear
        UISwitch.appearance().onTintColor = UIColor.baseGreen
    }

    var body: some View {
        VStack {
            Form{
                rentalPeriod
                numberOfCars
                pickupTime
                location
                drivers
                orderComplete
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
    }


    
    var rentalPeriod: some View {
        Section {
            Picker(selection: $order.prototypeAmt, label: Text("Retail period")) {
                ForEach(0..<order.prototypeArray.count, id: \.self) { value in
                    Text("\(self.order.prototypeArray[value])")
                        .tag(value)
                    
                }
            }
        }
        .listRowBackground(Color.baseGray)
    }
    var numberOfCars: some View {
        Section {
            Picker(selection: $order.prototypeAmt, label: Text("Number of cars")) {
                ForEach(0..<order.prototypeArray.count, id: \.self) { value in
                    Text("\(self.order.prototypeArray[value])")
                        .tag(value)
                }
            }
        }
        .listRowBackground(Color.baseGray)
    }
    var pickupTime: some View {
        Section {
            Picker(selection: $order.prototypeAmt, label: Text("Pick-up time")) {
                ForEach(0..<order.prototypeArray.count, id: \.self) { value in
                    Text("In \(self.order.prototypeArray[value]) mins")
                        .tag(value)
                }
            }
        }
        .listRowBackground(Color.baseGray)
    }
    var location: some View {
        Section {
            Picker(selection: $order.prototypeAmt, label: Text("Pick-up location")) {
                ForEach(0..<order.prototypeArray.count, id: \.self) { value in
                    Text("\(self.order.prototypeArray[value])")
                        .tag(value)
                }
            }
            Picker(selection: $order.prototypeAmt, label: Text("Return location")) {
                ForEach(0..<order.prototypeArray.count, id: \.self) { value in
                    Text("\(self.order.prototypeArray[value])")
                        .tag(value)
                }
            }
        }
        .listRowBackground(Color.baseGray)
    }
    var drivers: some View {
        Section {
            Toggle(isOn: $order.prototypeBoolean) {
                Text("Drivers")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.baseGray))
        }
        .listRowBackground(Color.baseGray)
    }
    var orderComplete: some View {
        Group {
            Section {
                HStack(alignment: .center) {
                    Spacer()
                    Text("$160")
                        .custom(font: .bold, size: 60)
                    Spacer()
                }
            }
            Section {
                Button {
                    self.order.isOrderCompleteVisible.toggle()
                } label: {
                    Text("COMPLETE ORDER")
                }
                .custom(font: .bold, size: 28)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 60)
                .foregroundStyle(Color.white)
                .background(Color.baseGreen)
                .cornerRadius(10)
            }
        }
        
    }
}

#Preview {
    FormView()
        .environmentObject(OrderViewModel())
}
