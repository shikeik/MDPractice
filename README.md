# MDPractice
练习Markdown语法

# T2.1

### 应用场景: 
- 当你的组件依赖某些引用项, 否则无法运行时, 可以使用此功能
### 当前功能: 
- #### 将你的组件标记为请求必须项
1. **$\color{orange}{修改}$**  
    - ~~使用RequireCustomComponentDrawer类~~(旧版已过时)  
    - 使用RequireEssentials字段标记
      - ```
          [RequireEssentials(typeof(SpriteRenderer), typeof(CircleCollider2D))]
          public String RequireEssentials;
        ```
      - 优点: 
        - 可以对一个字段声明多个必须组件
      - 缺点: 
        - ~~现在只针对Rigidbody2D组件~~, $\color{green}{现在可以声明所有组件类型}$
        - ~~并且字段必须声明public, 或者使用 [SerializeField]标记~~, $\color{green}{现在使用一个额外的String变量并标记所有你请求的组件即可}$
        - $\color{green}{已知一个bug: 使用后的脚本内没有回调方法面板启用复选框会消失}$
### 当前内容: 
1. 一个SampleScene场景有Gameobject-Test1/2/3, 分别有三种不同的组件MyComponent1/2/3  
1. MyComponent1/2都请求Rigidbody2D组件, 并在没有该组件时输出警告日志并禁用自身  
1. MyComponent3额外请求Collider2D组件, 他同时需要两个组件才能运行  
1. Test4物体带组件MyComponent4: 
    - 检测没有Rigidbody2D会在Inspector面板警告⚠并禁用自身, 并展示添加组件按钮
    - 添加后取消警告并显示原变量  
1. $\color{green}{Test5/6, 组件MyComponent5/6, 都使用T2.1标记}$
    - $\color{green}{遍历检测目标组件不存在则Inspector面板依次显示警告⚠并禁用自身, 并展示添加组件按钮}$
    - $\color{green}{添加后取消警告并激活自身, 不绘制目标字段}$