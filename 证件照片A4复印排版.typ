#set page("a4")

// 身份证照片，一页正反面
// 长85.6mm, 高 54.0mm
#place(
    dx: 20%,
    dy: 10%,
  image("__身份证正面照片模板.jpg", width: 85.6mm, height: 54.0mm),
)

#place(
    dx: 20%,
    dy: 60%,
  image("__身份证反面照片模板.jpg", width: 85.6mm, height: 54.0mm),
)

#pagebreak()

// 户口本单页照片
// 单页尺寸长143毫米,宽105毫米

#place(
    dx: 8%,
    dy: 20%,
  image("__户口本页照片模板.jpg", width: 143mm, height: 105mm),
)