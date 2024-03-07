@Entry
@Component
struct TextPage {
  scroll:Scroller=new Scroller()

  build(){
    Stack({alignContent:Alignment.BottomEnd}){
      Scroll(this.scroll){
        Column(){
          Row(){
            Text('111').width('100%').height(300).backgroundColor(Color.Red)
          }
          Row(){
            Text('222').width('100%').height(300).backgroundColor(Color.Blue)
          }
          Row(){
            Text('333').width('100%').height(300).backgroundColor(Color.Green)
          }
        }
      }
      Button('返回顶部').margin({right:20,bottom:20}).onClick(()=>{
        this.scroll.scrollEdge(Edge.Top)
      })
    }.height('100%').width('100%')
  }
}