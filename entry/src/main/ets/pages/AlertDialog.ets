import promptAction from '@ohos.promptAction';
@Entry
@Component
struct Index {
  build(){
    Column(){
      // API弹窗 3种
      Button('打开弹框').onClick(()=>{
        // promptAction.showToast({
        //   message: 'Message Info',
        //   duration: 2000,
        // });
        AlertDialog.show({
          title:'提示',
          message:'确认是否删除？',
          autoCancel:false, // 点击遮罩层是否关闭
          alignment:DialogAlignment.Bottom,
          offset:{dx:0,dy:-30},
          // 双按钮
          primaryButton:{
              value:'确定',
              action:()=>{
                console.log('ok')
              },
              fontColor:Color.Blue
          },
          secondaryButton:{
            value:'取消',
            action:()=>{
              console.log('cancel')
            },
            fontColor:Color.Green
          }
          // 单个按钮
          // confirm:{
          //   value:'确定',
          //   action:()=>{
          //     console.log('1')
          //   },
          //   fontColor:Color.Blue
          // }
        })
      })

    }.height('100%').width('100%')
  }
}