import subprocess as sp
from subprocess import PIPE
import os

output = sp.getoutput('df | head -n +4 | tail -n 1')
usage = output.split(" ")[11].replace("%", "")
if int(usage) >= 40:
    text = "Directory / is at {per}% utilization"
    msgText = text.format(per=usage)
    msgTitle = "Disk usage warning"
    os.environ['DISPLAY'] = ":0"
    sp.run([
        "notify-send",
        "-u",
        "critical",
        "--icon=dialog-information",
        msgTitle,
        msgText
    ], stdout=PIPE, stderr=PIPE
    )
