import SwiftUI

struct CartView: View {

    @ObservedObject var cartVM: CartViewModel

    var body: some View {
        VStack {

            List {
                ForEach(cartVM.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.product.name)
                            Text("Qtd: \(item.quantity)")
                        }

                        Spacer()

                        Button("-") {
                            cartVM.removeProduct(item.product)
                        }
                    }
                }
            }

            Text("Total: R$ \(cartVM.total, specifier: "%.2f")")
                .font(.title)
                .padding()
        }
        .navigationTitle("Carrinho")
    }
}