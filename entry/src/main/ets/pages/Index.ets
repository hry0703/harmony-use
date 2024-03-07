@Entry
@Component
struct Index {
  @State message: string = 'World'

  build() {
    Row() {
      Image('https://pic.rmb.bdstatic.com/bjh/914b8c0f9814b14c5fedeec7ec6615df5813.jpeg').height(100)
      Column(){
        //设置文本及内容
        Text(`Hello ${this.message}`)
          .fontSize(50)//设置文本大小
        Divider() //Divider 提供分隔器组件，分隔不同内容块/内容元素。
        //设置按钮
        Button('Click me')
          //设置按钮点击事件，点击按钮时将 myText 由 World 改变成 ArkUI
          .onClick(()=>{
            this.message='ArkUI';
            console.log('hello')
          })
          .height(50) //设置按钮高度
          .width(100) //设置按钮宽度
          .margin({top:20}) //设置按钮外边距
        // Image('https://img0.baidu.com/it/u=110176915,621401482&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=665')
      }
      .width('100%')
    }
    .height('100%')
  }
}