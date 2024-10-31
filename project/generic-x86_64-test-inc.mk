# Copyright (c) 2019 LK Trusty Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

RELEASE_BUILD ?= false

include project/generic-x86_64-inc.mk
include frameworks/native/libs/binder/trusty/usertests-inc.mk
include trusty/kernel/kerneltests-inc.mk
include trusty/user/base/usertests-inc.mk
include trusty/user/base/usertests-rust-inc.mk

WITH_HWCRYPTO_UNITTEST := 1

# Enable hwcrypto unittest keyslots and tests
GLOBAL_USER_COMPILEFLAGS += -DWITH_HWCRYPTO_UNITTEST=$(WITH_HWCRYPTO_UNITTEST)

TEST_BUILD := true
