@Entry
@Component
struct Index {
  @State arrObj:{id:number,name:string}[]= [
    {id:1,name:"lili"},
    {id:2,name:"Tom"},
    {id:3,name:"Janny"}]
  build() {
    Column() {
      // ForEach(this.arrObj,(item)=>{
      //    Text(`${new Date().getTime()}---${item.name}`)
      // },(item,index)=>index+JSON.stringify(item))

      //复用性更强
      ForEach(this.arrObj,(item)=>{
        Text(`${new Date().getTime()}---${item.name}`)
      },item=>JSON.stringify(item))

      Button("尾部新增一项").onClick(()=>{
        this.arrObj.push({id:this.arrObj.length,name:"丽萍"})
      })

      Button("调换位置").onClick(()=>{
        this.arrObj=[this.arrObj[2],this.arrObj[0],this.arrObj[1]]

      })
    }.width('100%')
    .height('100%')
  }
}