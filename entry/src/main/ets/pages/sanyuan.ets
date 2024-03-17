@Entry
@Component
struct APage {
  @State flag:boolean=true
  build() {
    Column() {
      Text("1111")
        .width(this.flag ? 100 : 0)
        .height(this.flag ? 100 : 0)
        .borderRadius(8)

      Text("1111")
        .visibility(this.flag?Visibility.Visible:Visibility.Hidden)
        .borderRadius(8)
      Text("222")
    }
  }
}