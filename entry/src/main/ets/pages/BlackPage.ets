@Entry
@Component
struct TextPage {
  build(){
    Column(){
      Row(){
        Text('<')
        Text('首页')
        Text('>')
      }.height(60).backgroundColor(Color.Pink).width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({left:15,right:15}).margin({bottom:30})

      Row(){
        Text('<').margin({right:20})
        Text('返回')
        Blank() // 剩余的空间都占了
        Text('+')
      }.height(60).backgroundColor(Color.Pink).width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({left:15,right:15}).margin({bottom:30})

      Row(){
        Text('<').position({x:5,y:20}) // 定位 父相子绝

        Text('首页').height(60).width('100%').textAlign(TextAlign.Center)
      }.height(60).backgroundColor(Color.Pink).width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({left:15,right:15}).margin({bottom:30})
    }.height('100%').width('100%')
  }
}