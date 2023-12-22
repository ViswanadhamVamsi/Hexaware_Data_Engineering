import time

# Getting current time in seconds since the epoch
current_time = time.time()
print("Current time (seconds since the epoch):", current_time)

# Converting epoch time to a time tuple (struct_time)
local_time_tuple = time.localtime(current_time)
print("Local time tuple:", local_time_tuple)

# Converting time tuple to readable format
readable_local_time = time.asctime(local_time_tuple)
print("Readable local time:", readable_local_time)

# Getting struct_time for the current local time
current_local_time = time.localtime()
print("Current local time tuple:", current_local_time)

# Getting struct_time for the current UTC time
current_utc_time = time.gmtime()
print("Current UTC time tuple:", current_utc_time)

# Formatting time using a format string
formatted_time = time.strftime("%Y-%m-%d %H:%M:%S", current_local_time)
print("Formatted time:", formatted_time)

# Parsing time from a string
parsed_time = time.strptime("2023-04-01 12:30", "%Y-%m-%d %H:%M")
print("Parsed time tuple:", parsed_time)

# Sleeping (pausing execution) for a specified number of seconds
print("Sleeping for 2 seconds...")
time.sleep(2)
print("Awake!")

# Getting processor clock time
processor_time = time.process_time()
print("Processor clock time:", processor_time)

# Getting monotonic time (can't go backwards)
monotonic_time = time.monotonic()
print("Monotonic time:", monotonic_time)

# Getting performance counter (high-resolution timer)
performance_time = time.perf_counter()
print("Performance counter time:", performance_time)
