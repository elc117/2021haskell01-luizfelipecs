import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 200 250 ++ 
  (svgCircle 95 98 75 "rgb(105, 14, 30, 0.7)") ++ --cabeca
  (svgCircle 95 240 95 "rgb(105, 14, 30, 0.7)") ++ --corpo
  (svgCircle 95 245 65 "rgb(255, 255, 255, 0.6)") ++ --barriga
  (svgCircle 23 33 23 "rgb(218, 165, 32, 0.8)") ++ -- orelha esq
  (svgCircle 168 33 23 "rgb(218, 165, 32, 0.8)") ++ -- orelha dir
  (svgCircle 70 70 23 "rgb(255, 255, 33, 0.7)") ++ -- olho esq
  (svgCircle 118 70 23 "rgb(255, 255, 33, 0.7)") ++ -- olho dir
  (svgCircle 80 80 8 "rgb(255, 255, 255, 0.8)") ++ -- pupila esq
  (svgCircle 127 80 8 "rgb(255, 255, 255, 0.8)") ++ -- pupila dir
  (svgCircle 94 108 8 "rgb(218, 165, 32, 0.8)") ++ -- nariz
  (svgCircle 94 140 18 "rgb(0, 0, 0, 0.9)") ++ -- boca
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
