Auto-Insulter
=============

A automatic insult generator implemented in Haskell

Building
=============
To build this you will need to use cabal to install the random package.
You will also, of course, need ghc.

To get GHC:
```
apt-get install ghc
```

To get cabal and install the random package:
```
apt-get install cabal-install
cabal update
cabal install random
```

Then simply compile it:
```
ghc insultGenerator.hs
```

To use, simply run the resulting binary:
```
./insultGenerator
```
