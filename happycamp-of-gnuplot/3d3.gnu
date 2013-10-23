splot x*x - y*y         # 馬鞍面
# 請用滑鼠拉著圖形轉一下
set ter 'gif'
set out '9.gif'
set isosamples 20,20    # 提高畫線密度; 下一次畫圖時才看得見效果。
replot                  # 重畫
set hidden3d            # 消除隱線;  下一次畫圖時才看得見效果。
replot                  # 注意: 現在曲面正面和背面的顏色不一樣了。
set contour             # 畫等高線。
replot
set cntrparam levels 20 # 提高等高線密度。
replot
set pm3d                # 按照高度著色。
replot
reset                   # 清除所有設定, 恢復成預設值。
replot                  # 回復成第一次畫圖的樣子
