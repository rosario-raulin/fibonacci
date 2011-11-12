{-
Copyright (C) 2011 Rosario Raulin

This file is part of fibonacci.

fibonacci is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

fibonacci is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
 
You should have received a copy of the GNU General Public License
along with fibonacci. If not, see <http://www.gnu.org/licenses/>.
-}

import System
import Control.Parallel
import Control.Monad

fib :: Integral a => a -> a
fib 0 = 1
fib 1 = 1
fib n = s `par` (ss `pseq` (s + ss))
        where
          s = fib (n-1)
          ss = fib (n-2)

main :: IO()
main = do args <- getArgs
          if (length args) > 0
            then
            putStrLn(show(fib (read (head args))))
            else
            putStrLn("usage: fibonacci [n]")
