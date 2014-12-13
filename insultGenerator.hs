import System.Random (randomRIO)

pick :: [a] -> IO a
pick xs = randomRIO (0, length xs - 1) >>= return . (xs !!)

firstPart :: IO [Char]
firstPart = pick ["Lazy", "Stupid", "Insecure", "Idiotic", "Slimy", "Slutty", "Smelly", "Pompous", "Communist", "Dicknose", "Pie-Eating", "Racist", "Elitist", "Trashy", "Drug-loving", "Butterface", "Tone deaf", "Ugly", "Creepy"]

secondPart :: IO [Char]
secondPart = pick ["douche", "ass", "turd", "rectum", "butt", "cock","shit","crotch","bitch","prick","slut","taint","fuck","dick","boner","shart","nut","sphincter"]

thirdPart :: IO [Char]
thirdPart = pick ["pilot","canoe","captain","pirate","hammer","knob","box","jockey","nazi","waffle","goblin","blossum","biscuit","clown","socket","monster","hound","dragon","balloon"]

main = do
	fp <- firstPart 
	sp <- secondPart
	tp <- thirdPart
	putStrLn $ "You are a " ++ fp ++ " " ++ sp ++ " " ++ tp
	
