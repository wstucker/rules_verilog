#!/usr/bin/bash
# This is a template for the bazel rtl_unit_test rule
# It is not intended to be run stand-alone
{SIMULATOR_COMMAND} \
    -libext .sv \
    -libext .svh \
    -libext .v \
    -libext .vams \
    -disable_sem2009 \
    -timescale 100fs/100fs \
    -vtimescale 100fs/100fs \
    -define TIMESCALE_STEP_FS=100 \
    -define TIMESCALE_PREC_FS=100 \
    -enable_single_yvlib \
    {DPI_LIBS} \
    {DEFAULT_SIM_OPTS} \
    {FLISTS} \
    {SIM_ARGS} \
    $@
