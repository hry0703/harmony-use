@Entry
@Component
struct TextPage {
  build(){
    Column(){
      // Row(){
      //   Text(`Hello Text`)
      //   Text($r('app.string.module_desc'))
      // }.width('100%').height('100%').justifyContent(FlexAlign.Center)
      // 图片引用的四种方式
      // 1要设置权限，module.json5 4 自建assets文件夹放资源
      Image('https://pic.rmb.bdstatic.com/bjh/914b8c0f9814b14c5fedeec7ec6615df5813.jpeg').height(100)
      Image($r('app.media.app_icon')).height(100)
      Image($r('app.media.icon')).height(120)
      Image($rawfile('1.png')).width(150)
      Image('/assets/image/2.png').width(200)
    }.height('100%')
  }
}