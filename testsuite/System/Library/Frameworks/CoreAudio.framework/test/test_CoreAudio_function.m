// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <Foundation/Foundation.h>

#include <darling-testsuite/assertion.h>

// #include "CoreAudio/HostTime.h"

#include <mach/mach_time.h>

UInt64_t AudioGetCurrentHostTime (void)
{
    mach_absolute_time();
    STUB();
    return 0;
}

int main() {
    // #include <Foundation/NSConnection.h>
    assert_uint64_t(@"AudioGetCurrentHostTime", AudioGetCurrentHostTime);

}
