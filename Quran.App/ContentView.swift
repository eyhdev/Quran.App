

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ForEach(3...4, id: \.self) {
                QuranPageView(pageNumber: "\($0)", verses: versesForPage(number: $0))
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .environment(\.layoutDirection, .rightToLeft)
    }
}
struct QuranPageView: View {
    var pageNumber: String
    var verses: [String]
    var body: some View {
        VStack{
            HStack{
                Text("Al-Baqarah")
                    .customStyle()
                Spacer()
                Text("Part 1")
                    .customStyle(fontSize: 20)
            }
            .padding()
            .padding([.top, .horizontal])
            
            ForEach(verses, id: \.self) { verse in
                Text(verse)
                    .font(.custom("QCF_P00" + pageNumber, size: 22))
                    .lineLimit(1)
                
            }
            HStack{
                Spacer()
                Text("Page \(pageNumber)")
                    .customStyle(fontSize: 20)
            }
            .padding(.horizontal)
        }
        
        .padding(.vertical)
    }
}
extension Text {
    func customStyle(fontSize: CGFloat = 24) -> some View{
        self.font(Font.custom("Bebas Neue", size: fontSize))
            .foregroundColor(.gray)
    }
}

func versesForPage(number: Int) -> [String] {
    
    switch number {
        
    case 3:
        return [
            "ﭑ ﭒ ﭓ ﭔ ﭕ ﭖ ﭗ ﭘ ﭙ",
            "ﭚ ﭛ ﭜ ﭝ ﭞ ﭟ ﭠ ﭡ ﭢ ﭣ ﭤ",
            "ﭥ ﭦ ﭧ ﭨ ﭩ ﭪ ﭫ ﭬ ﭭ",
            "ﭮ ﭯ ﭰ ﭱ ﭲ ﭳ ﭴ ﭵ ﭶ ﭷ",
            "ﭸ ﭹ ﭺ ﭻ ﭼ ﭽ ﭾ ﭿ",
            "ﮀ ﮁ ﮂ ﮃ ﮄ ﮅ ﮆ ﮇ ﮈ ﮉ",
            "ﮊ ﮋ ﮌ ﮍ ﮎ ﮏ ﮐ ﮑ ﮒ ﮓ",
            "ﮔ ﮕ ﮖ ﮗ ﮘ ﮙ ﮚ ﮛ ﮜ",
            "ﮝ ﮞ ﮟ ﮠ ﮡ ﮢ ﮣ ﮤ ﮥ ﮦ",
            "ﮧ ﮨ ﮩ ﮪ ﮫ ﮬ ﮭ ﮮ ﮯ ﮰ ﮱ",
            "ﯓ ﯔ ﯕ ﯖ ﯗ ﯘ ﯙ ﯚ ﯛ ﯜ",
            "ﯝ ﯞ ﯟ ﯠ ﯡ ﯢ ﯣ ﯤ ﯥ ﯦ",
            "ﯧ ﯨ ﯩ ﯪ ﯫ ﯬ ﯭ ﯮ ﯯ",
            "ﯰ ﯱ ﯲ ﯳ ﯴ ﯵ ﯶ ﯷ",
            "ﯸ ﯹ ﯺ ﯻ ﯼ ﯽ ﯾ ﯿ"
        ]
    case 4:
        return [
            "ﭑ ﭒ ﭓ ﭔ ﭕ ﭖ ﭗ ﭘ ﭙ",
            "ﭚ ﭛ ﭜ ﭝ ﭞ ﭟ ﭠ ﭡ ﭢ ﭣ",
            "ﭤ ﭥ ﭦ ﭧ ﭨ ﭩ ﭪ ﭫ ﭬ ﭭ ﭮ",
            "ﭯ ﭰ ﭱ ﭲ ﭳ ﭴ ﭵ ﭶ ﭷ",
            "ﭸ ﭹ ﭺ ﭻ ﭼ ﭽ ﭾ ﭿ ﮀ ﮁ",
            "ﮂ ﮃ ﮄ ﮅ ﮆ ﮇ ﮈ ﮉ ﮊ ﮋ ﮌ ﮍ",
            "ﮎ ﮏ ﮐ ﮑ ﮒ ﮓ ﮔ ﮕ ﮖ ﮗ ﮘ",
            "ﮙ ﮚ ﮛ ﮜ ﮝ ﮞ ﮟ ﮠ ﮡ",
            "ﮢ ﮣ ﮤ ﮥ ﮦ ﮧ ﮨ ﮩ ﮪ",
            "ﮫ ﮬ ﮭ ﮮ ﮯ ﮰ ﮱ ﯓ ﯔ",
            "ﯕ ﯖ ﯗ ﯘ ﯙ ﯚ ﯛ ﯜ ﯝ ﯞ ﯟ",
            "ﯠ ﯡ ﯢ ﯣ ﯤ ﯥ ﯦ ﯧ ﯨ ﯩ",
            "ﯪ ﯫ ﯬ ﯭ ﯮ ﯯ ﯰ ﯱ ﯲ",
            "ﯳ ﯴ ﯵ ﯶ ﯷ ﯸ ﯹ ﯺ ﯻ ﯼ",
            "ﯽ ﯾ ﯿ ﰀ ﰁ ﰂ ﰃ ﰄ ﰅ"
        ]
        
    default:
        return [""]
    }
}



#Preview {
    Group{
        ContentView()
            .preferredColorScheme(.dark)
            .environment(\.locale, Locale.init(identifier: "ar"))
    }
}
