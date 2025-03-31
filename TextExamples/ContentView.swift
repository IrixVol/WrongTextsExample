//
//  ContentView.swift
//  TextExamples
//
//  Created by Благообразова Татьяна Александровна on 31.03.2025.
//  BusinessOnline
//

import SwiftUI

/// Проверять на эмуляторе iPhone16 (iOS18*)
struct ContentView: View {
    let text1 = "Раздел 22 Правил запрещает перевозку детей до 12-летнего возраста на заднем сиденье мотоцикла, а также на переднем сиденье легкового автомобиля без использования детских удерживающих устройств."
    
    let text2 = "При каком максимальном значении суммарного люфта в рулевом управлении допускается эксплуатация легкового автомобиля?"
    
    let busuness = "Какие книги о бизнесе вас мотивировали? Почему?"
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12) {
            
            /// Текст переносится (когда его не просили в превью), на эмуляторе он обрезается
            Text(text1)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
                .border(.gray)
                .padding(.all, 16)
                
            /// Тот же текст, что и выше отображается корректно
            Text("\(text1)")
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 16)
            
            /// Текст обрезается в конце без причин
            Text(text2)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
                .border(.gray)
                .padding(.all, 12)
            
            /// Текст переносится некорректно
            Text("\(busuness)")
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
                .border(.gray)
                .padding(.all, 24)
            
            /// Тот же текст, что и выше, отображается корректно
            Text(busuness)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
                .border(.gray)
                .padding(.all, 24)
            
        }
        .padding(.all, .zero)
    }
}

#Preview {
    ContentView()
}
