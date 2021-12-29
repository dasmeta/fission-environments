#!/bin/sh
cd ${SRC_PKG}
yarn install && cp -r ${SRC_PKG} ${DEPLOY_PKG}
