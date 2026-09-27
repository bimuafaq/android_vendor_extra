#!/usr/bin/env bash

if [ -n "$BB_API_KEY" ]; then
  export USE_RBE=1
  export RBE_service="remote.buildbuddy.io:443"
  export RBE_remote_headers="x-buildbuddy-api-key=$BB_API_KEY"
  export RBE_use_rpc_credentials=false
  export RBE_service_no_auth=true
  export RBE_use_unified_downloads=true
  export RBE_use_unified_uploads=true

  export RBE_CXX_EXEC_STRATEGY=remote_local_fallback
  export RBE_CXX_LINKS_EXEC_STRATEGY=remote_local_fallback
  export RBE_JAVAC_EXEC_STRATEGY=remote_local_fallback
  export RBE_R8_EXEC_STRATEGY=remote_local_fallback
  export RBE_D8_EXEC_STRATEGY=remote_local_fallback
  export RBE_JAR_EXEC_STRATEGY=remote_local_fallback
  export RBE_ZIP_EXEC_STRATEGY=remote_local_fallback
  export RBE_TURBINE_EXEC_STRATEGY=remote_local_fallback
  export RBE_SIGNAPK_EXEC_STRATEGY=remote_local_fallback
  export RBE_ABI_LINKER_EXEC_STRATEGY=remote_local_fallback
  export RBE_ABI_DUMPER_EXEC_STRATEGY=local
  export RBE_METALAVA_EXEC_STRATEGY=remote_local_fallback

  export RBE_CXX=1
  export RBE_CXX_LINKS=1
  export RBE_JAVAC=1
  export RBE_R8=1
  export RBE_D8=1
  export RBE_JAR=1
  export RBE_ZIP=1
  export RBE_TURBINE=1
  export RBE_SIGNAPK=1
  export RBE_ABI_LINKER=1
  export RBE_METALAVA=1

  export RBE_JAVA_POOL=default
  export RBE_METALAVA_POOL=default
fi
