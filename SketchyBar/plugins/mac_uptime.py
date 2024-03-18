#!/usr/bin/env python3
import os


def getUptime():
    os.system('uptime > ~/mac_uptime_details')
    uptimeDetails = open('/Users/laggedskapari/mac_uptime_details', 'r').read()
    uptime = uptimeDetails.split()[2][:-1]
    if ":" in uptime:
        uptimeSplited = uptime.split(':')
        return f"{uptimeSplited[0]} HRS {uptimeSplited[1]} MINS"
    else:
        return uptime


if __name__ == "__main__":
    print(getUptime())