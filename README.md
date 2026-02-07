# ⏱️ GM-DeltaClock

> **Time-scaling made simple for GameMaker.**

![GameMaker](https://img.shields.io/badge/GameMaker-2023+-black?style=flat-square&logo=gamemaker&logoColor=white)
![License](https://img.shields.io/badge/License-Unlicense-blue?style=flat-square)

A lightweight function for calculating delta-time-based steps. It's been a lifesaver for smoothing out gameplay.

### 🚀 Why use DeltaClock?
*   **One Function:** Handles speed, movement, and durations.
*   **Hybrid Support:** Work in "Pixels Per Second" OR "Pixels Per Frame" (and let the clock handle the scaling).
*   **Lag Proof:** Keeps your game smooth even if FPS drops.

---

## 📦 Usage & Examples

The script accepts 3 parameters; **value**, **is_duration**(optional) and **use_frames**(optional).

**Basic Usage**

```gml
// Move a character
x += delta_clock(10); // Increase x position by 10 units every second.
```

```gml
// Reach to a point
x += delta_clock(150, true); // Increase x position by 150 in a second.
```

```gml
// Work along with game_speed
x += delta_clock(15, false, true); // Increase x position by 15 in a game frame.
```
