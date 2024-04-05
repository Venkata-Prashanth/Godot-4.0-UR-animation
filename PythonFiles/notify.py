from win10toast import ToastNotifier
import sys

def main():
    args = sys.argv
    notify(args[1], args[2])
    #notify("Warning", "This is the first notification")



def notify(title, message):
    toaster = ToastNotifier()
    toaster.show_toast(title, message, duration=10, icon_path="D:/Martha/VR_practice/bonetest/icon.ico")

if __name__ == "__main__":
    main()

