import Debug.Trace

main :: IO ()
main = interact parseInput

parseInput :: String -> String
parseInput = unlines . map convertFrame . drop 3 . init . lines

convertFrame :: String -> String
convertFrame line = "F. 0 0|" ++ outputBtns where 
    inputBtns = drop 4 line
    (up: down: left: right: select: start: y: b: x: a: l: r: _) = inputBtns
    outputBtns = [b, y, select, start, up, down, left, right, a, x, l, r]