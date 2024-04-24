import SwiftUI
struct Q2view: View {
    @State var output: String = ""
    var body: some View {
        VStack{
            Text("Who did Jon Jones fight twice to make one of the greatest rivalries in UFC history?")
                .foregroundColor(.yellow)
                .font(.largeTitle)
            HStack{
                Button(action: {
                    Boxview2()
                }, label: {
                 Image("Kevin randleman")
                }) 
                Button(action: {
                    Boxview()
                }, label: {
                   Image("DC")
                        .resizable()
                        .frame(width:200,height:150)
                }) 
                
                
            }
            HStack{
                Button(action: {
                    Boxview2()
                }, label: {
                   Image("ngannou")
                        .resizable()
                        .frame(width:200,height:150)
                })
                Button(action: {
                    Boxview2()
                }, label: {
                    Image("khabib")
                        .resizable()
                        .frame(width:200,height:150)
                })
            }
            Text("The answer is \(output)")
                .font(.title) 
            
       
        }
        
    }
    func Boxview(){
        output = "body: Correct"
    }
    func Boxview2(){
        output = "Wrong"
    }  
}
