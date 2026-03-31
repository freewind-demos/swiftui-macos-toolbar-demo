import SwiftUI

struct ContentView: View {
    @State private var selectedColor = Color.blue
    @State private var isFavorite = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Toolbar 工具栏示例")
                .font(.title)

            Text("观察窗口顶部的工具栏")
                .foregroundColor(.secondary)

            Divider()

            // 主内容区
            VStack(spacing: 30) {
                Circle()
                    .fill(selectedColor)
                    .frame(width: 100, height: 100)
                    .shadow(radius: 5)

                Text("点击工具栏按钮改变颜色")
                    .foregroundColor(.secondary)

                HStack {
                    Text("当前颜色:")
                    Circle()
                        .fill(selectedColor)
                        .frame(width: 20, height: 20)
                }
            }

            Spacer()
        }
        .padding(30)
    }
}
