import Foundation

struct CartItem: Identifiable {
    let id: UUID = UUID()
    let product: Product
    var quantity: Int
}
``