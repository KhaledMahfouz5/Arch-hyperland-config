#!/usr/bin/env python3
# ~/.config/waybar/scripts/date_hijri.py
from datetime import datetime
import os
import sys
import runpy

def use_venv(venv_path):
    """If venv exists, adjust environment so imports use it."""
    bin_dir = os.path.join(venv_path, "bin")
    python_bin = os.path.join(bin_dir, "python")
    activate_this = os.path.join(venv_path, "bin", "activate_this.py")

    if os.path.isdir(bin_dir) and os.path.isfile(python_bin):
        # Prepend venv bin to PATH so subprocesses use venv python if spawned.
        os.environ["PATH"] = bin_dir + os.pathsep + os.environ.get("PATH", "")
        # Adjust sys.prefix and site-packages so imports use venv packages.
        try:
            # On many venvs, running activate_this.py modifies sys.path appropriately.
            if os.path.isfile(activate_this):
                runpy.run_path(activate_this, run_name="__main__")
            else:
                # Fallback: try to add venv site-packages to sys.path
                py_ver = f"python{sys.version_info.major}.{sys.version_info.minor}"
                sp = os.path.join(venv_path, "lib", py_ver, "site-packages")
                if os.path.isdir(sp) and sp not in sys.path:
                    sys.path.insert(0, sp)
        except Exception:
            pass
        return True
    return False

def main():
    venv_dir = os.path.expanduser("~/.config/waybar/modules/.date_hijri")
    use_venv(venv_dir)

    try:
        from hijridate import Hijri, Gregorian
        weekday = datetime.now().strftime("%A")
        out = f"{weekday} {Hijri.today().isoformat()} -> {Gregorian.today().isoformat()}"
    except Exception:
        out = datetime.now().strftime("%A %Y-%m-%d")

    print(out)
    sys.stdout.flush()

if __name__ == "__main__":
    main()

