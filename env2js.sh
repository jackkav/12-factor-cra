#!/bin/sh
 if [ ! -z ${GQL_ENDPOINT} ]; then
 cat <<END
 window.GQL_ENDPOINT="${GQL_ENDPOINT}";
END
fi
 if [ ! -z ${LOCALE} ]; then
 cat <<END
 window.LOCALE="${LOCALE}";
END
fi