#!/bin/sh

if test -n "${GOTOLONG_DEBUG_LEVEL}"
then
    DEBUG_LEVEL=${GOTOLONG_DEBUG_LEVEL}
else
    DEBUG_LEVEL=0
fi

CONFIG_DATA_LOC=`python -m config data`
CONFIG_REPORTS_LOC=`python -m config reports`
CONFIG_PROFILE_DATA_LOC=`python -m config profile_data`
CONFIG_PROFILE_REPORTS_LOC=`python -m config profile_reports`

# figure this out automatically
IN_FILE=$CONFIG_DATA_LOC/nach-data/nach-aliases.csv
OUT_FILE_1=$CONFIG_REPORTS_LOC/nach-reports/nach-reports.csv

# python amfi_invoke.py --debug_level ${DEBUG_LEVEL} --in_files ${IN_FILE} --out_files ${OUT_FILE_1}
python nach_invoke.py -t -d ${DEBUG_LEVEL} -i ${IN_FILE} -o ${OUT_FILE_1}
