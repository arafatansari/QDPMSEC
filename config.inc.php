<?php

# Database management system to use
$DBMS = 'MySQL';

# Database variables
#   WARNING: The database specified under db_database WILL BE ENTIRELY DELETED during setup.
#   Please use a database dedicated to SECQD.
#
# If you are using MariaDB then you cannot use root, you must use create a dedicated SECQD user.
#   See README.md for more information on this.
$_SECQD = array();
$_SECQD[ 'db_server' ]   = 'localhost';
$_SECQD[ 'db_database' ] = 'qdpm';
$_SECQD[ 'db_user' ]     = 'username';
$_SECQD[ 'db_password' ] = 'password';

# Only used with PostgreSQL/PGSQL database selection.
$_SECQD[ 'db_port '] = '3306';

# Default security level
#   Default value for the secuirty level with each session.
#   The default is 'impossible'. You may wish to set this to either 'low', 'medium', 'high' or impossible'.
$_SECQD[ 'default_security_level' ] = 'low';

# Default PHPIDS status
#   PHPIDS status with each session.
#   The default is 'disabled'. You can set this to be either 'enabled' or 'disabled'.
$_SECQD[ 'default_phpids_level' ] = 'disabled';

# Verbose PHPIDS messages
#   Enabling this will show why the WAF blocked the request on the blocked request.
#   The default is 'disabled'. You can set this to be either 'true' or 'false'.
$_SECQD[ 'default_phpids_verbose' ] = 'false';

?>