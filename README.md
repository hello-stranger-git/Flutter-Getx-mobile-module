# Flutter+Getx移动端项目模版
## 目录结构  
lib/  
├── app/  
│   ├── theme/           # 主题配置（字体、颜色等全局配置）  
│   └── translations/    # 国际化资源（多语言翻译）  
├── common/  
│   ├── constants/       # 常量（图片资源管理）  
│   ├── extensions/      # 扩展方法  
│   └── utils/           # 工具类（屏幕适配、本地存储、中间件等工具）  
│   └── widgets/         # 全局公共组件  
├── model/  
│   ├── data/            # 数据模型  
│   └── services/        # 数据服务请求  
├── view/  
│   └──pages/           # 页面视图  
└── main.dart            # 入口文件  
# 文件目录作用  
- lib/app/theme: 包含应用程序的全局主题配置，例如字体、颜色等。
- lib/app/translations: 包含应用程序的多语言翻译资源。
- lib/common/constants: 包含应用程序的常量，例如图片资源管理。
- lib/common/extensions: 包含应用程序的扩展方法，用于简化代码。
- lib/common/utils: 包含应用程序的工具类，例如屏幕适配、本地存储、中间件等。
- lib/common/widgets: 包含应用程序的全局公共组件。
- lib/model/data: 包含应用程序的数据模型。
- lib/model/services: 包含应用程序的数据服务请求。
- lib/view/pages: 包含应用程序的页面视图。
- lib/main.dart: 应用程序的入口文件。 
