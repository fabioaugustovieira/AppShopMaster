import SwiftUI

struct MainView: View {

    @StateObject var cartVM = CartViewModel()

    var body: some View {

        TabView {

            NavigationStack {
                ProductListView(cartVM: cartVM)
            }
            .tabItem {
                Label("Loja", systemImage: "bag")
            }

            NavigationStack {
                CartView(cartVM: cartVM)
            }
            .tabItem {
                Label("Carrinho", systemImage: "cart")
            }

            NavigationStack {
                ProfileView()
            }
            .tabItem {
                Label("Perfil", systemImage: "person")
            }
        }
    }
}
``