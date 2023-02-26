.libPaths(here::here("lib"))

pacman::p_load(
    tidyverse,
    gcookbook
)

## %>% の使い方例
head(morley)
morley %>%
  filter(Expt == 1) %>%
  summary()

## scatter plot examples
head(mtcars$wt)
plot(mtcars$wt, mtcars$mpg)
ggplot(mtcars, aes(x = wt, y = mpg)) + # プロット用のオブジェクトを作成
  # データフレーム, mtcars を渡して、その後、 x 軸, y 軸に使用する列を指定する
  geom_point() # 点をプロットするためのレイヤーを追加


## line chart examples
### baseR package
plot(pressure$temperature, pressure$pressure, type = "l")
points(pressure$temperature, pressure$pressure) # Add points and lines
lines(pressure$temperature, pressure$pressure/2, col = "red")
points(pressure$temperature, pressure$pressure/2, col = "red")

### ggplot2
ggplot(pressure, aes(x = temperature, y = pressure)) +
  geom_line()
geom_ponit() # Error in geom_ponit() : could not find function "geom_ponit"
ggplot(pressure, aes(x = temperature, y = pressure)) + # point を追加するには描画し直す
  geom_line() +
  geom_point()
