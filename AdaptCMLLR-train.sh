#!/bin/zsh
#
# Copyright 2011 by Idiap Research Institute, http://www.idiap.ch
#
# See the file COPYING for the licence associated with this software.
#
# Author(s):
#   Phil Garner, September 2011
#
echo Script: $0
source Config.sh
chdir.sh $*

# Variables for the main script
export WORD_MLF=../local/si_tr_s.mlf
export FILE_LIST=$trainList
export MIX_ORDER=16
export ADAPT_MODEL_DIR=../train-mfccez-si-284/hmm-eval
export ADAPT_KIND=base
export ADAPT_TRANS_KIND=CMLLR
export ADAPT_TRANS_EXT=cmllr
export ADAPT_PATTERN='*/%%%?????.htk'


echo "$trainList"

init-adapt.sh
adapt-mllr.sh
