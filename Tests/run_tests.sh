#!/bin/bash

find /app/SimulationCraft/simc
find /apl/Tests/boris.simc
mkdir /html
SIMC=/app/SimulationCraft/simc
TEST_PROFILES_FOLDER=/apl/Tests/test_profiles
APL_PATH=/apl/enhance-apl.simc

TEST_APLS='sorg_fae dw_fae frostwitch_fae bones_fae'
export SIMC_PARAMS=''
for apl_name in $TEST_APLS
do
	export SIMC_PARAMS="${SIMC_PARAMS} $TEST_PROFILES_FOLDER/$apl_name.simc $APL_PATH name=${apl_name}_apl $TEST_PROFILES_FOLDER/$apl_name.simc name=${apl_name}_baseline"
done
$SIMC $SIMC_PARAMS desired_targets=1 html=/html/1_targets.html
$SIMC $SIMC_PARAMS desired_targets=2 html=/html/2_targets.html
$SIMC $SIMC_PARAMS desired_targets=3 html=/html/3_targets.html
$SIMC $SIMC_PARAMS desired_targets=4 html=/html/4_targets.html
$SIMC $SIMC_PARAMS desired_targets=5 html=/html/5_targets.html
$SIMC $SIMC_PARAMS desired_targets=10 html=/html/10_targets.html