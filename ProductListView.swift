import SwiftUI

struct ProductListView: View {

    @ObservedObject var cartVM: CartViewModel

    let products = [
        Product(name: "iPhone", price: 5000),
        Product(name: "MacBook", price: 12000),
        Product(name: "AirPods", price: 1500)
    ]

    var body: some View {
        List(products) { product in
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.headline)

                Text("R$ \(product.price, specifier: "%.2f")")

                Button("Adicionar ao carrinho") {
                    cartVM.addProduct(product)
                }
            }
        }
        .navigationTitle("Produtos")
    }
}