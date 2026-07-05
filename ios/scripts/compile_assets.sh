#!/bin/sh
set -e

ASSET_CATALOG="${SRCROOT}/Runner/Assets.xcassets"
APP_BUNDLE="${BUILT_PRODUCTS_DIR}/${WRAPPER_NAME}"

if [ ! -d "${ASSET_CATALOG}" ]; then
  exit 0
fi

/Applications/Xcode.app/Contents/Developer/usr/bin/actool \
  --output-format human-readable-text \
  --notices --warnings \
  --platform "${PLATFORM_NAME}" \
  --minimum-deployment-target "${IPHONEOS_DEPLOYMENT_TARGET}" \
  --target-device iphone \
  --target-device ipad \
  --output-partial-info-plist "${TARGET_TEMP_DIR}/assetcatalog_generated_info.plist" \
  --compile "${APP_BUNDLE}" \
  "${ASSET_CATALOG}"
