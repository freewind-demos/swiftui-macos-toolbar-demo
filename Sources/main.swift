import Cocoa

@main
struct ToolbarApp: App {
    var body: some Scene {
        Window("Toolbar 工具栏", id: "main") {
            ContentView()
        }
        .defaultSize(width: 600, height: 400)
        .toolbar {
            ToolbarItemGroup(placement: .primaryAction) {
                Button {
                    print("新建")
                } label: {
                    Image(systemName: "plus")
                }
                .help("新建项目")

                Button {
                    print("保存")
                } label: {
                    Image(systemName: "square.and.arrow.down")
                }
                .help("保存")

                Button {
                    print("设置")
                } label: {
                    Image(systemName: "gear")
                }
                .help("设置")
            }

            ToolbarItem(placement: .navigation) {
                Button {
                    print("返回")
                } label: {
                    Image(systemName: "chevron.left")
                }
            }
        }
    }
}
