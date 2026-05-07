import Foundation

class CartViewModel: ObservableObject {

    @Published var items: [CartItem] = []

    func addProduct(_ product: Product) {
        if let index = items.firstIndex(where: { $0.product == product }) {
            items[index].quantity += 1
        } else {
            items.append(CartItem(product: product, quantity: 1))
        }
    }

    func removeProduct(_ product: Product) {
        if let index = items.firstIndex(where: { $0.product == product }) {
            items[index].quantity -= 1

            if items[index].quantity <= 0 {
                items.remove(at: index)
            }
        }
    }

    var total: Double {
        items.reduce(0) {
            $0 + ($1.product.price * Double($1.quantity))
        }
    }
}