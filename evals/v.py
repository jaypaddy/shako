import subprocess
from dotenv_azd import load_azd_env


try:
    load_azd_env()
except Exception as e:
    print("Error while loading azd environment:", e)
    print("Trying to debug subprocess call...")
    result = subprocess.run(["azd", "env", "get-values"], capture_output=True, text=True)
    print("Subprocess output:", result.stdout)
    print("Subprocess error:", result.stderr)
    raise