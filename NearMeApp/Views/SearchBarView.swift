import SwiftUI

struct SearchBarView: View {
    @Binding var search: String
    @Binding var isSearching: Bool
    
    var body: some View {
        VStack(spacing: -10){
            TextField("Search", text: $search)
                .textFieldStyle(.roundedBorder)
                .padding()
                .onSubmit {
                    isSearching = true
                }
            SearchOptionsView{
                searhTerm in
                search = searhTerm
                isSearching = true
            }
            .padding(.leading, 10)
            .padding(.bottom,20)
        }
    }
}
