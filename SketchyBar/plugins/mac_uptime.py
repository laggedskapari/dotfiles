#!/usr/bin/env python3
import os


def getUptime():
    os.system('uptime > ~/mac_uptime_details')
    uptimeDetails = open('/Users/laggedskapari/mac_uptime_details', 'r').read()
    try:
        uptime = uptimeDetails.split('  ')[1].split(',')[0].split(" ")[1]
        return f"{uptime}"
    except IndexError:
        uptime = uptimeDetails.split()[2].split(":")
        return f"{uptime[0]} HRS {uptime[1][:-1]} MINS"


if __name__ == "__main__":
    print(getUptime())
