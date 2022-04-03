//
//  ContentView.swift
//  Sendr App
//
//  Created by Grant Daigle on 3/28/22.
//

import SwiftUI
struct HomeScreenView: View {
    var body: some View {
        NavigationView{
            ZStack{
                HomeView()
                    .navigationTitle("🏠")
                    .navigationBarHidden(true)
                Text("Sendr")
                    .fontWeight(.black)
                    .font(.system(size: 50))
                    .offset(y:-250)
                    .foregroundColor(.black)
                
                
                VStack{
                    Spacer()
                    NavigationLink(destination: CurrencyScreenView(), label: {
                        Text("Currency Exchange")
                            .font(.system(size: 28))
                            .fontWeight(.semibold)
                            .frame(width: 290, height: 50)
                            .foregroundColor(Color.white)
                            .border(Color.black)
                            .background(Color.blue)
                    })
                    HStack{
                        
                        NavigationLink(destination: SendScreenView(), label: {
                            Text("Send")
                                .font(.system(size: 28))
                                .fontWeight(.semibold)
                                .frame(width: 130, height: 50)
                                .foregroundColor(Color.white)
                                .border(Color.black)
                                .background(Color.blue)
                                .padding([.top, .bottom])
                        })
                        NavigationLink(destination: RequestScreenView(), label: {
                            Text("Request")
                                .font(.system(size: 28))
                                .fontWeight(.semibold)
                                .frame(width: 130, height: 50)
                                .foregroundColor(Color.white)
                                .border(Color.black)
                                .background(Color.blue)
                                .padding([.top, .bottom])
                                .padding(.leading, 20.0)
                        })
                    }
                }
            }
            
            .background(Color.green)
        }
    }
}
struct SendScreenView: View {
    @State private var username: String = ""
    @State private var money: String = ""
    var body: some View {
        VStack{
            Spacer()
            Text("Please Type the name, emal address, or phone number of the recipient")
                .offset(y:-200)
            TextField(
                " Required",
                text: $username
                    
            )
            .frame(width:350,height: 40)
            .onSubmit {
                
            }
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .background(Color.white)
            .offset(y:-180)
    
            
            Spacer()
            HStack{
                Spacer()
                TextField("How much are you sending \(username)",
            text: $money)
                .frame(width:350,height: 40)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .background(Color.white)
                .offset(y:-290)
                .padding()
                Spacer()
            }
            Spacer()
        }
        .background(Color.red.ignoresSafeArea(.all, edges: .all))
    }
}
struct RequestScreenView: View {
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Spacer()
                 Text("REQUESTING MONEY FROM AA :)")
                    .fontWeight(.black)
                    .font(.system(size: 38))
                    .offset(y: -60)
    
                Spacer()
            }
            Spacer()
        }
        .background(Color.yellow.ignoresSafeArea(.all, edges: .all))
    }
}

struct CurrencyScreenView: View {
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Spacer()
                Text("CURRENCY EXCHANGE $$$$")
                    .fontWeight(.black)
                    .font(.system(size: 38))
                    .offset(y: -60)
                Spacer()
            }
            Spacer()
        }
        .background(Color.orange.ignoresSafeArea(.all, edges: .all))
        
    }
}




struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "creditcard.fill")
                .font(.system(size: 150))
                .foregroundColor(.white)
                .background(.black)
                .padding(125)
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
            .previewInterfaceOrientation(.portrait)
    }
}
