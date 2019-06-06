#!/bin/sh
if [[ -n "${MAX_OLD_SPACE_SIZE}" ]]; then
  ADDITIONNAL_NODE_PARAMS=" --max-old-space-size=${MAX_OLD_SPACE_SIZE}"
fi

npm run start -- --async-stack-traces $ADDITIONNAL_NODE_PARAMS
