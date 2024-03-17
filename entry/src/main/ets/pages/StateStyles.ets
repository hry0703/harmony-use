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
  @State flag:boolean=true
  @Styles commonStyle(){
    .layoutWeight(1)
    .height(100)
  }

  build(){
    Column(){
      TextInput({placeholder:"请输入用户名"})
        .stateStyles({
          focused:{
            .border({
              width:3,
              color:"#f00"
            })
          },
          normal:{
            .border({
              width:3,
              color:"#00f"
            })
          }
        })
      TextInput({placeholder:"请输入密码"})

      Button("切换").stateStyles({
        pressed:{
          .backgroundColor(Color.Red)
        },
        normal:{
          .backgroundColor(Color.Blue)
        }
      }).onClick(()=>{
        this.flag = !this.flag
      })


      Button("按钮").enabled(this.flag)
        .stateStyles({
          disabled:{ // disabled状态生效需要定义enabled的切换
            .backgroundColor(Color.Black)
          },
          pressed:{
            .backgroundColor(Color.Red)
          },
          normal:{
            .backgroundColor(Color.Blue)
          }
      })

    }.width('100%').height("100%")
  }
}