# 📢 Caleb Notify

**Author:** Lil Caleb  
**Version:** 1.1.0  
**License:** Free to use  

A lightweight and versatile notification system for **ESX servers** using **ox_lib**. Supports multiple notification types, custom titles, and icons.

---

## ✨ Features
- ✅ Server- and client-side notification support  
- 🔹 Multiple notification types: `inform`, `success`, `error`, `warning`  
- 📝 Customizable titles, messages, icons, and duration  
- ⚡ Easy integration with jobs, money events, or custom scripts  
- 🛡️ Admin command to send notifications to any player  

---

## ⚙️ Installation
1. Place the `caleb-notify` folder in your server's `resources` directory.  
2. Add `start caleb-notify` to your `server.cfg`.  
3. Ensure `es_extended` and `ox_lib` are installed and running.  

---

## 🖥️ Usage

### Server-side trigger
```lua

TriggerEvent('caleb-notify:server', playerId, 'success', 'Title', 'Message')
