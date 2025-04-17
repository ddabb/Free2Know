@Entry
@Component
struct Index {
  @State message: string = '杨林芳是世界上最美丽的女人';

  build() {
    Column() {
      // 背景颜色
      Stack() {
        // 背景颜色层
        Text('') // 使用空文本占位
          .width('100%')
          .height('100%')
          .backgroundColor('#FFD1DC') // 设置单色背景
          .opacity(0.8);

        // 核心文本
        Text(this.message)
          .id('HelloWorld')
          .fontSize(60)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)
          .textAlign(TextAlign.Center)
          .textShadow({ radius: 10, color: Color.Gray })
          .position({ x: '50%', y: '50%' }) // 手动居中
          .translate({ x: '-50%', y: '-50%' });

        // 使用文字创建简单爱心装饰
        Text('❤')
          .fontSize(80) // 设置较大的字体大小以增加视觉效果
          .fontColor('#FF4B5C') // 设置爱心的颜色
          .margin({ top: -30 }) // 调整位置，使其与主文本协调
          .position({ x: '50%', y: '20%' }) // 手动居中
          .translate({ x: '-50%', y: '-50%' });
      }
      .width('100%')
      .height('100%');
    }
    .width('100%')
    .height('100%');
  }
}