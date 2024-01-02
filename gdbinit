#
# C++ related beautifiers (optional)
#

set print pretty on
set print object on
set print static-members on
set print vtbl on
set print demangle on
set demangle-style gnu-v3
set print sevenbit-strings off

set follow-fork-mode child
set detach-on-fork off

python
import sys
import gdb
sys.path.insert(0, '/usr/share/gcc/python')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (gdb.current_objfile())
end
