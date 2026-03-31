# SwiftUI macOS Toolbar 工具栏

## 简介

演示 SwiftUI 中 Toolbar 的用法，添加工具栏按钮。

## 快速开始

```bash
cd swiftui-macos-toolbar-demo
xcodegen generate
open SwiftUIToolbarDemo.xcodeproj
# Cmd+R 运行
```

观察窗口顶部出现的工具栏按钮。

## 概念讲解

### 在 Window 中添加 Toolbar

```swift
Window("标题", id: "main") {
    ContentView()
}
.toolbar {
    ToolbarItemGroup(placement: .primaryAction) {
        Button { } label: { Image(systemName: "plus") }
        Button { } label: { Image(systemName: "gear") }
    }
}
```

### ToolbarItemGroup 按钮组

```swift
ToolbarItemGroup(placement: .primaryAction) {
    Button("新建") { }
    Button("保存") { }
    Button("设置") { }
}
```

### 位置 placement

| 值 | 说明 |
|---|------|
| `.primaryAction` | 右上角主按钮 |
| `.navigation` | 左上角导航 |
| `.automatic` | 自动位置 |
| `.bottomBar` | 底部栏 |
| `.sidebar` | 侧边栏 |

## 完整示例

```swift
Window("App", id: "main") {
    Content()
}
.toolbar {
    ToolbarItemGroup(placement: .primaryAction) {
        Button { } label: { Image(systemName: "plus") }
        Button { } label: { Image(systemName: "gear") }
    }
}
```

## 完整讲解（中文）

### Toolbar 用途

- 提供常用操作的快捷入口
- macOS 应用的标准 UI 模式
- 工具栏按钮有提示（`.help()`）

### placement 说明

- `.primaryAction` - 主操作区（右上）
- `.navigation` - 导航区（左上）
- 根据系统自动调整样式
