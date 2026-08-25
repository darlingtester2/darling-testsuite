// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <Foundation/Foundation.h>

#include <darling-testsuite/assertion.h>

#include <CoreAudio/CoreAudioTypes.h>

#include <CoreAudio/CoreAudio.h>

#include <CoreAudio/HostTime.h>

int main() {
assert_equals_double(@"AudioGetHostClockFrequency", AudioGetHostClockFrequency);

}
