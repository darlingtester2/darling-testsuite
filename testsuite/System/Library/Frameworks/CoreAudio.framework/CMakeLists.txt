# SPDX-FileCopyrightText: 2026 Darling Team
# SPDX-License-Identifier: MPL-2.0

set(DARLING_PATH "${DARLING_PATH}/CoreAudio.framework")
set(DARLING_IDENTIFIER "${DARLING_IDENTIFIER}_CoreAudio_framework")

find_library(CORE_AUDIO CoreAudio REQUIRED)
add_executable("${DARLING_IDENTIFIER}.test_CoreAudio_double" "test/test_CoreAudio_double.m")
target_link_libraries("${DARLING_IDENTIFIER}.test_CoreAudio_double" "-framework Foundation ${CORE_AUDIO}/CoreAudio" darling-testsuite-lib)
add_test(NAME "${DARLING_PATH}/test_CoreAudio_double" COMMAND "${DARLING_IDENTIFIER}.test_CoreAudio_function")

add_executable("${DARLING_IDENTIFIER}.test_CoreAudio_function" "test/test_CoreAudio_function.m")
target_link_libraries("${DARLING_IDENTIFIER}.test_CoreAudio_function" "-framework Foundation ${CORE_AUDIO}/CoreAudio" darling-testsuite-lib)
add_test(NAME "${DARLING_PATH}/test_CoreAudio_function" COMMAND "${DARLING_IDENTIFIER}.test_CoreAudio_function")

install(
    TARGETS
        "${DARLING_IDENTIFIER}.test_CoreAudio_double"
        "${DARLING_IDENTIFIER}.test_CoreAudio_function"

    DESTINATION
        "${INSTALL_DIR_TESTCASE}"
)

