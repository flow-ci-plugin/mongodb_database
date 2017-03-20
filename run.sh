# ************************************************************
#
# This step will start mongodb
#
#   Variables used:
#
#   Outputs:
#     $FLOW_DATABASE_MONGODB_VERSION
#     $FLOW_DATABASE_MONGODB_IP
#     $FLOW_DATABASE_MONGODB_PORT
#
# ************************************************************

flow_cmd "sudo /usr/bin/mongod -f /etc/mongod.conf --fork" --echo
FLOW_DATABASE_MONGODB_VERSION="$(mongo --version 2>&1)"
FLOW_DATABASE_MONGODB_PORT="27017"
FLOW_DATABASE_MONGODB_IP="127.0.0.1"
