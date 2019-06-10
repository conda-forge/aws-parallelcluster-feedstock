#!/usr/bin/env bash

set -e -o pipefail -u

if [[ ${PKG_VERSION} == *"a"* ]]; then
    cat > "${PREFIX}"/.messages.txt <<- EOF

##############################################################################
#                                                                            
# Warning: version ${PKG_NAME}-${PKG_VERSION} is an alpha version.          
# Consider using stable version for production use.                          
#                                                                            
##############################################################################

EOF

fi
