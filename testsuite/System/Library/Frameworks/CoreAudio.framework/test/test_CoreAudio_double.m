// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <Foundation/Foundation.h>

#include <darling-testsuite/assertion.h>

#include <CoreAudio/CoreAudioTypes.h>

#include <CoreAudio/CoreAudio.h>

#include <CoreAudio/HostTime.h>

/*

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double AGHCF_value = AudioGetHostClockFrequency();
        NSLog(@"AudioGetHostClockFrequency retrieved expected value: %f", AGHCF_value);
    }
    return 0
}

*/


int main() {
assert_equals_double(@"AudioGetHostClockFrequency", 24000000.000000, AudioGetHostClockFrequency);

}

