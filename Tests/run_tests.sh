#!/bin/bash

find /app/SimulationCraft/simc
find /apl/Tests/boris.simc
mkdir /html
SIMC=/app/SimulationCraft/simc
TEST_PROFILES_FOLDER=/apl/Tests/test_profiles
APL_PATH=/apl/elem-apl.simc

TEST_APLS='eogs_mote_fae eogs_mote_necro eogs_se_fae eogs_se_necro skyb_mote_fae skyb_mote_necro skyb_se_fae skyb_se_necro sorg_mote_fae sorg_se_fae wlr_if_fae wlr_if_necro'
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