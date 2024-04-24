import SwiftUI

struct ContentView: View {
    @State var output: String = ""
    var body: some View {
        NavigationStack{
            
            
            VStack {
                Text("Which fighter has sold the most PPV in the UFC?")
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
                HStack{
                    Button(action: {
                        Boxview()
                    }, label: {
                        Image("connor")
                            .resizable()
                            .frame(width:200,height:150)
                    }) 
                    Button(action: {
                        Boxview2()
                    }, label: {
                        Image("Nick diaz") 
                            .resizable()
                            .frame(width:200,height:150)
                    }) 
                    
                    
                }
                HStack{
                    Button(action: {
                        Boxview2()
                    }, label: {
                        Image("Poatan")
                            .resizable()
                            .frame(width:200,height:150)
                    })
                    Button(action: {
                        Boxview2()
                    }, label: {
                        Image("spider")
                            .resizable()
                            .frame(width:200,height:150)
                    })
                }
                Text("The answer is \(output)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
               
                    NavigationLink("To Question 2", destination: Q2view())
                
            }
        }
    } 
    func Boxview(){
        output = "Correct"
    }
    func Boxview2(){
        output = "Wrong"
    }
    
}
