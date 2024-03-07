@Entry
@Component
struct TextPage {
  build(){
    Column(){
      Stack({
        alignContent:Alignment.TopStart
      }){
        Row(){}.height(300).width(300).backgroundColor(Color.Red)
        Row(){}.height(200).width(200).backgroundColor(Color.Yellow)
        Row(){}.height(100).width(100).backgroundColor(Color.Green)
      }
    }.height('100%').width('100%')
  }
}