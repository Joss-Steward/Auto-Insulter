import System.Random (randomRIO)
import Control.Monad

pick :: [a] -> IO a
pick xs = randomRIO (0, length xs - 1) >>= return . (xs !!)

firstPart :: [[Char]]
firstPart = ["lazy", "stupid", "insecure", "idiotic", "slimy", "slutty", "smelly", "pompous", "communist", "dicknose", "pie-eating", "racist", "elitist", "trashy", "drug-loving", "butterface", "tone deaf", "ugly", "creepy"]

secondPart :: [[Char]]
secondPart = ["douche", "ass", "turd", "rectum", "butt", "cock","shit","crotch","bitch","prick","slut","taint","fuck","dick","boner","shart","nut","sphincter"]

thirdPart :: [[Char]]
thirdPart = ["pilot","canoe","captain","pirate","hammer","knob","box","jockey","nazi","waffle","goblin","blossum","biscuit","clown","socket","monster","hound","dragon","balloon"]

makeInsult :: IO [Char]
makeInsult = do
    fp <- pick firstPart
    sp <- pick secondPart
    tp <- pick thirdPart
    return $ fp ++ " " ++ sp ++ " " ++ tp

main = do
    insult <- makeInsult
    putStrLn $ "You are a " ++ insult ++ "!"














