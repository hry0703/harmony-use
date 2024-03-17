@Entry
@Component
struct Index {
  SelectData:{value:string}[]=[{value:"霍建华"},{value:"周深"},{value:"杨丽萍"}]
  @State selected:number=-1

  build(){
    Column(){
      Select(this.SelectData)
        .selected(0)
        .value("请选择")
        .onSelect((index)=>{
          this.selected=index
        })

      if(this.selected===0){
        Text("演员")
      }else if(this.selected===1){
        Text("歌手")
      }else if(this.selected===2){
        Text("舞蹈家")
      }else{
        Text("普通人")
      }

    }.height("100%")
    .width("100%")

  }
}