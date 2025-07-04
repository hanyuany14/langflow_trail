
## 🛠️ 本地開發環境設定指南

## 📚 Index

- [✅ 先備條件](#先備條件)
- [📦 建立本地虛擬環境](#建立本地虛擬環境)
- [📥 安裝專案相依套件](#安裝專案相依套件)

<h2 id="先備條件">✅ 先備條件</h2>


本專案使用 **Python 3.11** 搭配 [Poetry](https://python-poetry.org/) 管理相依套件與虛擬環境，請依照以下步驟完成環境設定。

請先確認你的系統已安裝以下工具：

| 工具     | 推薦版本  | 檢查方式                                                                                    |
| ------ | ----- | --------------------------------------------------------------------------------------- |
| Python | 3.11  | macOS/Linux：`python3.11 --version`<br>Windows：`py -3.11 --version` 或 `python --version` |
| Poetry | 2.1.2 | `poetry --version`                                                                      |

若尚未安裝，可參考官方教學：

* [Python 安裝教學](https://www.python.org/downloads/)
* [Poetry 安裝教學](https://python-poetry.org/docs/#installation)

---

<h2 id="建立本地虛擬環境">📦 建立本地虛擬環境</h2>

執行以下指令，建立位於專案資料夾內的虛擬環境：

```bash
poetry config virtualenvs.in-project true
```

接著指定使用 Python 3.11：

```bash
poetry env use python3.11
```

> 💡 **Windows 用戶：**
> 將上述指令中的 `python3.11` 改為 `python` 或 `py -3.11`，依照你的系統設定。

---

### 🔍 檢查虛擬環境狀態

```bash
poetry env info
```

你會看到類似以下的輸出：

```
Virtualenv
Python:         3.11.4
Implementation: CPython
Path:           ./your-project/.venv
Executable:     ./your-project/.venv/bin/python
Valid:          True
```

> 💡 **Windows 用戶補充：**
> `Executable` 路徑會顯示為 `.venv\Scripts\python.exe`。

---

<h2 id="安裝專案相依套件">📥 安裝專案相依套件</h2>


建立虛擬環境後，執行以下指令安裝相依套件：

```bash
poetry install
```

（此步驟適用所有平台，無需調整。）

