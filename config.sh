# Hosting url to be used for adding server entry to database and show progress on web
_DOMAIN=$(echo "cGFuZWwuZnJvbnRsaW5lLXZwbi5jb20K" | base64 --decode)
HOSTING_DOMAIN="https://"$_DOMAIN"/";
#url for progress
PROGRESS_URL=$HOSTING_DOMAIN"progress/";
#url fot adding record to database;
RECORD_URL=$HOSTING_DOMAIN"serve";
# Some API Authentication Configuration
API_URL=\"$_DOMAIN\";
API_SSL="1";
API_PAGE="connection";
API_USER_PARAM="username";
API_PASS_PARAM="password";
API_SERVER_PARAM="ip";
API_PROCESS_PARAM="proc";
API_CONNECT_SCRIPT_PATH="/etc/ocserv/.../...";
API_DISCONNECT_SCRIPT_PATH="/etc/ocserv/.../....";
