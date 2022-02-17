from pathlib import Path, PurePath
import os
from datetime import datetime


# ====================== DIRETÓRIOS LOCAIS ======================
ROOT = Path(os.path.dirname(os.path.abspath(__file__))).parent
NOW = datetime.now().strftime("%H:%M")
DATA_DIRECTORY = os.path.join(ROOT, "Data")
# ===============================================================