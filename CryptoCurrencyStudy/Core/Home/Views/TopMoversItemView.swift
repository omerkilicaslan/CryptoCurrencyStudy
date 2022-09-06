//
//  TopMoversItemView.swift
//  CryptoCurrencyStudy
//
//  Created by Ömer Faruk Kılıçaslan on 4.09.2022.
//

import SwiftUI

struct TopMoversItemView: View {
    
    let coin : Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            // Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            // Coin Info
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("\(coin.currentPrice)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // Coin Percent Change
            Text("\(coin.priceChangePercentage24H)")
                .font(.title2)
                .foregroundColor(.green)
            
        }
        .frame(width: 140, height: 140)
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 1)
        }
        .padding(.vertical, 6)
        
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
//}
