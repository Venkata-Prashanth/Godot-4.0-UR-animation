import rtde_control
import time


ip = "192.168.137.99"

def main():
    rtde_c = rtde_control.RTDEControlInterface(ip)
    rtde_c.moveL([-0.36783,-0.68956,0.11500,2.232,2.201,-0.005], 0.5, 0.3)
    rtde_c.moveL([-0.1,-0.68956,0.11500,2.232,2.201,-0.005], 0.5, 0.3)
    rtde_c.disconnect()
    return 1

if __name__ == "__main__":
    main()