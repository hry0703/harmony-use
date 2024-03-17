class NameClass{
  firstName:string
  nameContent:string[]

  constructor(firstName:string,nameContent:string[]) {
    this.firstName = firstName;
    this.nameContent = nameContent
  }
}



@Entry
@Component
struct Index {
  NameList:NameClass[]=[
    new NameClass("李",["李里","李芳","李月","李飞","李藏"]),
    new NameClass("刘",["刘备","刘彻","刘思雨"]),
    new NameClass("王",["王玉华","王岁","王喜文","王华"])
  ]
  @Builder
  HeaderTitle(title:string){
    Text(title)
      .fontSize(20)
      .fontWeight(900)
      .height(50)
      .backgroundColor('#ccc')
      .width('100%')
  }

  @Builder
  delButton(){
    Button("删除")
  }
  build() {
    Column() {
      List(){
        ForEach(this.NameList,(item)=>{
          ListItemGroup({header:this.HeaderTitle(item.firstName),space:20}){
            ForEach(item.nameContent,(itemCon)=>{
              ListItem(){
                Text(itemCon)
              }.width('100%').height(50)
              .swipeAction({end:this.delButton()})
            })
          }.width("100%")
          .divider({ strokeWidth: 3, color:"#ccc" })
        },item=>JSON.stringify(item))
      }
    }.width('100%')
    .height('100%')
  }
}