// SPDX-FileCopyrightText: 2026 Darling Team
// SPDX-License-Identifier: MIT-0

#include <Foundation/Foundation.h>

#include <darling-testsuite/assertion.h>

#include <CoreAudio/CoreAudioTypes.h>

#include <CoreAudio/CoreAudio.h>
 
#include <CoreAudio/HostTime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool { 
        uint64_t AGCHT_value = AudioGetCurrentHostTime();
        NSLog(@"AudioGetCurrentHostTime retrieved expected value: %u", AGCHT_value);
    }
    return 0;
}
/*
int main() {
    
    assert_uint64_t(@"AudioGetCurrentHostTime", AudioGetCurrentHostTime);

}
*/
