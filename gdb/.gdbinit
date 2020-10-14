source /usr/local/pwndbg/gdbinit.py
python
import atexit
import os
from pwndbg.commands.context import contextoutput, output, clear_screen
code = os.popen('tmux split-window -P -F "#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
disasm = os.popen(f'tmux split-window -t {code[0]} -P -F '+'"#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
regs = os.popen(f'tmux split-window -h -P -F '+'"#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
stack = os.popen(f'tmux split-window -h -t {code[0]} -P -F '+'"#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
backtrace = os.popen(f'tmux split-window -h -t {disasm[0]} -P -F '+'"#{pane_id}:#{pane_tty}" -d "cat -"').read().strip().split(":")
panes = dict(code=code, disasm=disasm, regs=regs, stack=stack, backtrace=backtrace)
for sec, pane in panes.items():
  contextoutput(sec, pane[1], True)
contextoutput("legend", disasm[1], True)
atexit.register(lambda: [os.popen(F"tmux kill-pane -t {p[0]}").read() for p in panes.values()])
end
