# Copyright (C) 2011 Rosario Raulin
#
# This file is part of fibonacci.

# fibonacci is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# fibonacci is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with fibonacci. If not, see <http://www.gnu.org/licenses/>.

NTHREADS='2'

fibonacci:
	haskell-compiler --make -threaded fibonacci.hs -rtsopts \
	 -with-rtsopts='-N$(NTHREADS)'
clean:
	rm -f *.o *.hi fibonacci
