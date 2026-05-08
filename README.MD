# 🚀 Windows Runtime Installer (All-In-One)

Автоматизированный скрипт для установки всех необходимых библиотек и сред выполнения Windows в один клик.

---

## 🇷🇺 Русская версия

Этот PowerShell-скрипт использует менеджер пакетов `winget` и системную утилиту `dism` для полной подготовки системы к запуску любых игр и профессионального ПО. Больше не нужно искать установщики вручную - скрипт сам найдет последние версии и установит их.

### 📦 Что устанавливается:
* **Visual C++ Redistributable:** Все версии (2005, 2008, 2010, 2012, 2013, 2015-2022) - x86 и x64.
* **.NET Family:** Последние версии Desktop Runtime и AspNetCore Runtime (динамический поиск) + классические .NET 3.5 и 4.8.
* **Java:** Последняя стабильная версия JRE (Eclipse Temurin) - x86 и x64.
* **Игровые библиотеки:** DirectX (End-User Runtime), NVIDIA PhysX, Vulkan Runtime.
* **Legacy & Audio:** OpenAL, XNA Framework 4.0, DirectPlay.

### 🛠 Инструкция:
1. Скачайте файл скрипта `.ps1`.
2. Нажмите правой кнопкой мыши по файлу и выберите **"Выполнить с помощью PowerShell"** (запуск от имени администратора обязателен).
3. Скрипт создаст лог-файл `install_log.txt` на рабочем столе.
4. По завершении компьютер автоматически перезагрузится через 60 секунд.

### Лицензия / Отказ от ответственности

Этот проект распространяется под лицензией **MIT** — подробности см. в файле [LICENSE](LICENSE).

### ⚠️ ВАЖНО:

* **Использование на свой страх и риск:** Данный скрипт и инструкция предоставляются «как есть» (as is). Автор не несет ответственности за любые сбои в работе вашей системы, потерю данных или повреждение оборудования.
* **Внешние зависимости:** При установке библиотек Вы используете стороннее ПО, за безопасность которого автор ответственности не несет.
* **Проверка кода:** Настоятельно рекомендуется изучить код перед запуском и протестировать его в безопасной среде, а перед применением выполнить создание точки восстановления системы.

---

**Авторские права © 2026 [Иван Бирючков / https://github.com/biryuchkov-ia]**

---

## 🇺🇸 English Version

Automated script to install all essential Windows runtimes and libraries in one click.

This PowerShell script leverages `winget` and `dism` to fully prepare your Windows system for any games or professional software. No more manual searching for installers-the script dynamically finds the latest versions and installs everything for you.

### 📦 Components Included:
* **Visual C++ Redistributable:** All versions (2005, 2008, 2010, 2012, 2013, 2015-2022) for both x86 and x64.
* **.NET Family:** Latest Desktop & AspNetCore Runtimes (dynamic search) + Classic .NET 3.5 and 4.8.
* **Java:** Latest stable JRE (Eclipse Temurin) - x86 and x64.
* **Graphics & Physics:** DirectX (End-User Runtime), NVIDIA PhysX, Vulkan Runtime.
* **Legacy & Audio:** OpenAL, XNA Framework 4.0, DirectPlay.

### 🛠 How to use:
1. Download the `.ps1` script file.
2. Right-click the file and select **"Run with PowerShell"** (Administrator privileges are required).
3. The script will generate a log file named `install_log.txt` on your desktop.
4. The system will automatically restart 60 seconds after completion.

---

## 📊 Summary Table / Сводная таблица

| Component | Architecture | Versioning |
|---|---|---|
| Visual C++ | x86 & x64 | 2005 - 2022 |
| .NET Runtimes | x86 & x64 | Latest (Dynamic) |
| Java JRE | x86 & x64 | Latest (LTS) |
| DirectX | Universal | Latest |
| NVIDIA PhysX | x64 | Latest |
| Vulkan | Universal | Latest |

---

### License / Disclaimer

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

### ⚠️ IMPORTANT:

* **Use at your own risk:** These script and instruction are provided "as is". The author is not liable for any system failures, data loss, or hardware damage.
* **External dependencies:** By installing libraries, you are using third-party software for which the author assumes no responsibility.
* **Code review:** It is highly recommended to study the code before execution and test it in a safe environment. It is also advised to create a system restore point before use.

---

**Copyright © 2026 [Ivan Biryuchkov / https://github.com/biryuchkov-ia]**

---
