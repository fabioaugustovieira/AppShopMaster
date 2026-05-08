import Foundation

struct Product: Identifiable, Equatable {
    let id: UUID = UUID()
    let name: String
    let price: Double
}
