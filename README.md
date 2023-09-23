# MDPractice
练习Markdown语法

# T2
### 应用场景: 
- 当你的组件依赖某些引用项, 否则无法运行时, 在你的类前使用此标记RequireEssential[typeof(essentialType)]
### 当前功能: 
- #### 将你的组件标记为请求必须项
    1. ~~`旧版RequireCustomComponentDrawer步骤(不推荐):`~~
    1. $\color{green}{新版}$

### 当前内容: 
一个T1.1场景有Gameobject-Test1/2/3, 分别有三种不同的组件MyComponent1/2/3  
MyComponent1/2都请求Rigidbody2D组件, 并在没有该组件时输出警告日志并禁用自身  
MyComponent3额外请求Collider2D组件, 他同时需要两个组件才能运行