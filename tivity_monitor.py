import time
import datetime

# Configuration
LOG_FILE = "vps_activity_log.txt"
INTERVAL = 300 # Log every 300 seconds (5 minutes)

def log_activity():
    """Logs the current time to the designated file."""
    current_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    log_message = f"[{current_time}] VPS Monitor: Script is active.\n"
    
    with open(LOG_FILE, 'a') as f:
        f.write(log_message)
        
    print(f"Logged check at: {current_time}")

def main():
    """Main function that runs the logging loop."""
    print("Activity Monitor started...")
    while True:
        log_activity()
        time.sleep(INTERVAL)

if __name__ == "__main__":
    main()
