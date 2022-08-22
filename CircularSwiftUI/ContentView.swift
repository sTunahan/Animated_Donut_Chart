


import SwiftUI

struct ContentView: View {
    
    @State var firstCirclePercentage : Double = 0  // buradakı degerımız dolu olacak yuzdemız olcak
    @State var secondCirclePercentage : Double = 0
    
    
    var body: some View {
        
        ZStack{
            //MARK: 1.
            Circular(lineWidth: 50, backgroundColor: Color.blue.opacity(0.2), foregroundColor: Color.blue, percentage: firstCirclePercentage)
                .frame(width: 350, height: 350)
                .onTapGesture {  // circula tıklanıldıgında doluluk gösterılsın ıstersem
                    
                    if self.firstCirclePercentage == 0 {
                        self.firstCirclePercentage = 67
                    }else {
                        self.firstCirclePercentage = 0
                    }
                }
            //MARK: 2.
            Circular(lineWidth: 50, backgroundColor: Color.green.opacity(0.2), foregroundColor: Color.green, percentage: secondCirclePercentage)
                .frame(width: 175, height: 175)
                .onTapGesture {  // circula tıklanıldıgında doluluk gösterılsın ıstersem
                    
                    if self.secondCirclePercentage == 0 {
                        self.secondCirclePercentage = 100
                    }else {
                        self.secondCirclePercentage = 0
                    }
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
