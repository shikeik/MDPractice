# MDPractice
练习Markdown语法

# T2

### 应用场景: 
- 当你的组件依赖某些引用项, 否则无法运行时, 在你的类前使用此标记RequireEssential[typeof(essentialType)]
### 当前功能: 
- #### 将你的组件标记为请求必须项
1. **$\color{orange}{修改}$**  
    - ~~使用RequireCustomComponentDrawer类~~ (旧版已过时)  
    - $\color{green}{使用[RequireEssentials]标记}$
      - ```
          [RequireEssentials]
          [SerializeField]
          private Rigidbody2D rigi;
        ```
      - 优点: 
        - 可以对目标字段使用
      - 缺点: 
        - 现在只针对Rigidbody2D组件
        - 并且字段必须声明public, 或者使用 [SerializeField]标记
### 当前内容: 
一个 $\color{orange}{SampleScene}$ 场景有Gameobject-Test1/2/3, 分别有三种不同的组件MyComponent1/2/3  
MyComponent1/2都请求Rigidbody2D组件, 并在没有该组件时输出警告日志并禁用自身  
MyComponent3额外请求Collider2D组件, 他同时需要两个组件才能运行  
$\color{green}{新增Test4物体带组件MyComponent4: }$  
- $\color{green}{检测没有Rigidbody2D会在Inspector面板警告⚠并禁用自身, 并展示添加组件按钮}$
- $\color{green}{添加后取消警告并显示原变量}$


语法备用$\color{orange}{T2}$