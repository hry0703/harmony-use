@Entry
@Component
struct TextPage {
  build(){
    Column(){
      Toggle({ type:ToggleType.Checkbox,isOn: true})
      Toggle({ type:ToggleType.Switch,isOn: true})
      Toggle({ type:ToggleType.Button,isOn: true}){
        Text('按钮')
      }

      Slider({
        value:10,
        min:0,
        max:100,
        step:20,
        style:SliderStyle.InSet,
        direction:Axis.Horizontal,
        reverse:false,
      })

      Progress({
        value:50,
        total:100,
        type:ProgressType.ScaleRing
      }).style({
        scaleCount:20,
        scaleWidth:2,
        strokeWidth:20
      })
    }.height('100%')
  }
}