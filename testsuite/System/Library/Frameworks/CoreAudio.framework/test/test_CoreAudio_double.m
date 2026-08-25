// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <Foundation/Foundation.h>

#include <darling-testsuite/assertion.h>

// #include "CoreAudio/HostTime.h"

#include <mach/mach_time.h>

double AudioGetHostClockFrequency(void)
{
    mach_timebase_info_data_t theTimeBaseInfo;
    mach_timebase_info(&theTimeBaseInfo);
    STUB();
    return 0;
}

int main() {
    // #include <Foundation/NSConnection.h>
    assert_equals_double(@"AudioGetHostClockFrequency", AudioGetHostClockFrequency);

}
