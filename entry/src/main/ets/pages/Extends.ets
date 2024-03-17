// 只能全局使用
import promptAction from '@ohos.promptAction'
// 只能当前页面使用 不能导入导出

@Extend(Text) function commonTextStyle(size:number,color:string,cb:()=>void){
  .fontSize(size)
    .fontColor(color)
    .fontWeight(700)
    .backgroundColor("#fff")
    .onClick(()=>{
      cb();
    })
}


@Entry
@Component
struct TextPage {
  @Styles commonStyle(){
    .layoutWeight(1)
    .height(100)
  }

  build(){
    Column(){
      Text("hello")
        .commonTextStyle(20,"#f00",()=>{
          promptAction.showToast({
            message:"hello"
          })
        })
      Text("apple")
        .commonTextStyle(30,"#0f0",()=>{
          promptAction.showToast({
            message:"apple"
          })
        })


    }.width('100%')
  }
}