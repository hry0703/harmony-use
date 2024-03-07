@Entry
@Component
struct TextPage {
  // @Builder 构建函数的装饰器 抽取ui描述的
  @Builder HeaderBuilder(params:string){
    Text(`${params}`)
  }

  @Builder DeleteButton(){
   Button('删除').backgroundColor(Color.Red)
  }


  build(){
    Column(){
      // List({space:5}){
      //   ListItem(){
      //     Text('apple')
      //   }.height(300).width('100%').backgroundColor(Color.Gray)
      //   ListItem(){
      //     Text('banana')
      //   }.height(300).width('100%').backgroundColor(Color.Pink)
      //   ListItem(){
      //     Text('orange')
      //   }.height(300).width('100%').backgroundColor(Color.Green)
      // }

      List({space:5}){
        // header的值是构建函数
        ListItemGroup({header:this.HeaderBuilder("李")}){
          ListItem(){
            Text('apple')
          }.height(30).width('100%').backgroundColor(Color.Gray)
          .swipeAction({end:this.DeleteButton()})
          ListItem(){
            Text('banana')
          }.height(30).width('100%').backgroundColor(Color.Pink)
          ListItem(){
            Text('orange')
          }.height(30).width('100%').backgroundColor(Color.Green)
        }

      }
    }.height('100%').width('100%')
  }
}