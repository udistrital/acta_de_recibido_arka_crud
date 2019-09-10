#!/usr/bin/env bash

set -e
set -u
set -o pipefail

if [ -n "${PARAMETER_STORE:-}" ]; then
  export PARAMETROS_GOB__PGUSER="$(aws ssm get-parameter --name /${PARAMETER_STORE}/acta_recibido/db/username --output text --query Parameter.Value)"
  export PARAMETROS_GOB__PGPASS="$(aws ssm get-parameter --with-decryption --name /${PARAMETER_STORE}/acta_recibido/db/password --output text --query Parameter.Value)"
fi

exec ./main "$@"