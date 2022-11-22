#!/bin/bash

# Place the patches in vendor/extra/patches
# The script goes inside patches folder
# run it on the dir root aka ./vendor/extra/patches/patch.sh
# run it after running . build/envsetup.sh

export VENDOR_EXTRA_PATH=$(gettop)/vendor/extra
export VENDOR_PATCHES_PATH="$VENDOR_EXTRA_PATH"/patches

for contributor in chondo nazim peter phh sooti
    for project_name in $(cd "$VENDOR_PATCHES_PATH"; echo */); do
        project_path="$(tr _ / <<<$project_name)"

        cd "$ANDROID_BUILD_TOP"/"$project_path"
        git am. "$VENDOR_PATCHES_PATH"/" $contributor"/"$project_name"/*.patch
        git am --abort &> /dev/null
    done
done
