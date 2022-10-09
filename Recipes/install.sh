#!/bin/bash

VERSION_SCRIPT="Version/version.sh"

if ! test -e "$VERSION_SCRIPT"; then

  echo "ERROR: The version script was not found at path: '$VERSION_SCRIPT'"
  exit 1
fi

# shellcheck disable=SC1090
. "$VERSION_SCRIPT" && \
  echo "Installing the '$VERSIONABLE_NAME' target, please wait" && \
  cd "Library" && \
  rm -rf ./Build && \
  mkdir Build && \
  cd Build && \
  cmake -GNinja .. && \
  ninja -j "$(nproc)" && \
  sudo ninja install && \
  echo "The '$VERSIONABLE_NAME' target has been installed with success" && \
  cd .. && rm -rf ./Build

# Install log example:
#
#-- Install configuration: ""
#-- Installing: /usr/local/lib64/libdrogon.a
#-- Installing: /usr/local/include/drogon/Attribute.h
#-- Installing: /usr/local/include/drogon/CacheMap.h
#-- Installing: /usr/local/include/drogon/Cookie.h
#-- Installing: /usr/local/include/drogon/DrClassMap.h
#-- Installing: /usr/local/include/drogon/DrObject.h
#-- Installing: /usr/local/include/drogon/DrTemplate.h
#-- Installing: /usr/local/include/drogon/DrTemplateBase.h
#-- Installing: /usr/local/include/drogon/HttpAppFramework.h
#-- Installing: /usr/local/include/drogon/HttpBinder.h
#-- Installing: /usr/local/include/drogon/HttpClient.h
#-- Installing: /usr/local/include/drogon/HttpController.h
#-- Installing: /usr/local/include/drogon/HttpFilter.h
#-- Installing: /usr/local/include/drogon/HttpRequest.h
#-- Installing: /usr/local/include/drogon/HttpResponse.h
#-- Installing: /usr/local/include/drogon/HttpSimpleController.h
#-- Installing: /usr/local/include/drogon/HttpTypes.h
#-- Installing: /usr/local/include/drogon/HttpViewData.h
#-- Installing: /usr/local/include/drogon/IntranetIpFilter.h
#-- Installing: /usr/local/include/drogon/IOThreadStorage.h
#-- Installing: /usr/local/include/drogon/LocalHostFilter.h
#-- Installing: /usr/local/include/drogon/MultiPart.h
#-- Installing: /usr/local/include/drogon/NotFound.h
#-- Installing: /usr/local/include/drogon/Session.h
#-- Installing: /usr/local/include/drogon/UploadFile.h
#-- Installing: /usr/local/include/drogon/WebSocketClient.h
#-- Installing: /usr/local/include/drogon/WebSocketConnection.h
#-- Installing: /usr/local/include/drogon/WebSocketController.h
#-- Installing: /usr/local/include/drogon/drogon.h
#-- Installing: /usr/local/include/drogon/version.h
#-- Installing: /usr/local/include/drogon/drogon_callbacks.h
#-- Installing: /usr/local/include/drogon/PubSubService.h
#-- Installing: /usr/local/include/drogon/drogon_test.h
#-- Installing: /usr/local/include/drogon/exports.h
#-- Installing: /usr/local/include/drogon/orm/ArrayParser.h
#-- Installing: /usr/local/include/drogon/orm/Criteria.h
#-- Installing: /usr/local/include/drogon/orm/DbClient.h
#-- Installing: /usr/local/include/drogon/orm/DbTypes.h
#-- Installing: /usr/local/include/drogon/orm/Exception.h
#-- Installing: /usr/local/include/drogon/orm/Field.h
#-- Installing: /usr/local/include/drogon/orm/FunctionTraits.h
#-- Installing: /usr/local/include/drogon/orm/Mapper.h
#-- Installing: /usr/local/include/drogon/orm/CoroMapper.h
#-- Installing: /usr/local/include/drogon/orm/Result.h
#-- Installing: /usr/local/include/drogon/orm/ResultIterator.h
#-- Installing: /usr/local/include/drogon/orm/Row.h
#-- Installing: /usr/local/include/drogon/orm/RowIterator.h
#-- Installing: /usr/local/include/drogon/orm/SqlBinder.h
#-- Installing: /usr/local/include/drogon/orm/RestfulController.h
#-- Installing: /usr/local/include/drogon/nosql/RedisClient.h
#-- Installing: /usr/local/include/drogon/nosql/RedisResult.h
#-- Installing: /usr/local/include/drogon/nosql/RedisSubscriber.h
#-- Installing: /usr/local/include/drogon/nosql/RedisException.h
#-- Installing: /usr/local/include/drogon/utils/any.h
#-- Installing: /usr/local/include/drogon/utils/apply.h
#-- Installing: /usr/local/include/drogon/utils/coroutine.h
#-- Installing: /usr/local/include/drogon/utils/FunctionTraits.h
#-- Installing: /usr/local/include/drogon/utils/HttpConstraint.h
#-- Installing: /usr/local/include/drogon/utils/optional.h
#-- Installing: /usr/local/include/drogon/utils/OStringStream.h
#-- Installing: /usr/local/include/drogon/utils/string_view.h
#-- Installing: /usr/local/include/drogon/utils/Utilities.h
#-- Installing: /usr/local/include/drogon/plugins/Plugin.h
#-- Installing: /usr/local/include/drogon/plugins/SecureSSLRedirector.h
#-- Installing: /usr/local/include/drogon/plugins/AccessLogger.h
#-- Installing: /usr/local/include/drogon/plugins/RealIpResolver.h
#-- Installing: /usr/local/lib64/cmake/Drogon/DrogonConfig.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/DrogonConfigVersion.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/FindUUID.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/FindJsoncpp.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/FindSQLite3.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/FindMySQL.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/Findpg.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/FindBrotli.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/Findcoz-profiler.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/FindHiredis.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/FindFilesystem.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/DrogonUtilities.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/ParseAndAddDrogonTests.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/DrogonTargets.cmake
#-- Installing: /usr/local/lib64/cmake/Drogon/DrogonTargets-noconfig.cmake
#-- Installing: /usr/local/lib64/libtrantor.a
#-- Installing: /usr/local/include/trantor/exports.h
#-- Installing: /usr/local/include/trantor/net/EventLoop.h
#-- Installing: /usr/local/include/trantor/net/EventLoopThread.h
#-- Installing: /usr/local/include/trantor/net/EventLoopThreadPool.h
#-- Installing: /usr/local/include/trantor/net/InetAddress.h
#-- Installing: /usr/local/include/trantor/net/TcpClient.h
#-- Installing: /usr/local/include/trantor/net/TcpConnection.h
#-- Installing: /usr/local/include/trantor/net/TcpServer.h
#-- Installing: /usr/local/include/trantor/net/callbacks.h
#-- Installing: /usr/local/include/trantor/net/Resolver.h
#-- Installing: /usr/local/include/trantor/net/Channel.h
#-- Installing: /usr/local/include/trantor/utils/AsyncFileLogger.h
#-- Installing: /usr/local/include/trantor/utils/ConcurrentTaskQueue.h
#-- Installing: /usr/local/include/trantor/utils/Date.h
#-- Installing: /usr/local/include/trantor/utils/Funcs.h
#-- Installing: /usr/local/include/trantor/utils/LockFreeQueue.h
#-- Installing: /usr/local/include/trantor/utils/LogStream.h
#-- Installing: /usr/local/include/trantor/utils/Logger.h
#-- Installing: /usr/local/include/trantor/utils/MsgBuffer.h
#-- Installing: /usr/local/include/trantor/utils/NonCopyable.h
#-- Installing: /usr/local/include/trantor/utils/ObjectPool.h
#-- Installing: /usr/local/include/trantor/utils/SerialTaskQueue.h
#-- Installing: /usr/local/include/trantor/utils/TaskQueue.h
#-- Installing: /usr/local/include/trantor/utils/TimingWheel.h
#-- Installing: /usr/local/include/trantor/utils/Utilities.h
#-- Installing: /usr/local/lib64/cmake/Trantor/TrantorConfig.cmake
#-- Installing: /usr/local/lib64/cmake/Trantor/TrantorConfigVersion.cmake
#-- Installing: /usr/local/lib64/cmake/Trantor/Findc-ares.cmake
#-- Installing: /usr/local/lib64/cmake/Trantor/TrantorTargets.cmake
#-- Installing: /usr/local/lib64/cmake/Trantor/TrantorTargets-noconfig.cmake
#-- Installing: /usr/local/bin/drogon_ctl
#-- Installing: /usr/local/bin/dg_ctl

