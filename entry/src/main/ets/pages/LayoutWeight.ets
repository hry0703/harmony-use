@Entry
@Component
struct TextPage {
  // 样式当前页面复用 不可导出
  @Styles commonStyle(){
    .layoutWeight(1)
    .height(100)
  }


  build(){
    Column(){
      Row(){
        Row(){}
        .commonStyle()
        .backgroundColor(Color.Red);
        Row(){}
        .commonStyle()
        .backgroundColor(Color.Pink);

      }.width("100%")

      Row(){}
      .width(100)
      .aspectRatio(1)  // 高宽比
      .backgroundColor(Color.Red)
      
      Row(){}
      .width(100)
      .height(100)
      .backgroundColor(Color.Blue)


    }.height('100%')
  }
}