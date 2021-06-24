#!/bin/bash

find /app/SimulationCraft/simc
find /apl/Tests/boris.simc
mkdir /html
/app/SimulationCraft/simc /apl/Tests/boris.simc /apl/elem-apl.simc desired_targets=3 html=/html/boris_3_targets.html
/app/SimulationCraft/simc /apl/Tests/boris.simc /apl/elem-apl.simc desired_targets=4 html=/html/boris_4_targets.html
/app/SimulationCraft/simc /apl/Tests/boris.simc /apl/elem-apl.simc desired_targets=5 html=/html/boris_5_targets.html