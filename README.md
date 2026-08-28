# Skybound Acres 🚜✈️

A premium open-world farming & aviation simulation for Roblox combining deep farming mechanics, aircraft restoration, survival, building, and exploration into one immersive experience.

## 🎮 Core Systems

### 🌾 Farming System
- **Soil Types**: Clay, loam, sandy soil with different crop compatibility
- **Irrigation**: Manual watering, sprinkler systems, automated irrigation
- **Pest Management**: Dynamic pest infestations, pesticide application
- **Seasons**: 4-season cycle affecting crop growth and animal behavior
- **Crops**: Wheat, corn, soybeans, vegetables with different growth times
- **Animals**: Chickens, cows, sheep with individual care needs and bonding

### ✈️ Aviation System
- **Bush Plane Restoration**: Engine, wings, cockpit, landing gear restoration
- **Helicopter Building**: Progressive repair and customization
- **Flight Mechanics**: Realistic flight controls and physics
- **Attachments**: Crop spraying, fertilizer spreading, cargo lifting, animal transport
- **Missions**: Delivery routes, crop dusting contracts, exploration

### 🏗️ Building & Expansion
- **Home Upgrades**: Expand living space, add furniture, utilities
- **Land Purchase**: Expand farm boundaries, acquire neighboring plots
- **Barns & Storage**: Store crops, animals, equipment
- **Hangars**: Aircraft storage and maintenance
- **Runways**: Upgrade landing surfaces for larger aircraft

### 🗺️ World Exploration
- **Towns & NPCs**: Dynamic NPC missions, trading, reputation
- **Forests**: Logging, rare items, hidden discoveries
- **Lakes**: Fishing, water-based missions
- **Hidden Airstrips**: Secret locations, rare rewards
- **Cities**: Upgrade shops, markets, endgame activities

### 🌦️ Survival & Weather
- **Dynamic Weather**: Rain affects crops/flying, snow affects vehicles
- **Random Events**: Storms, pest invasions, equipment failure
- **Day/Night Cycle**: Affects farming and flying visibility
- **Seasons**: Spring planting, summer growth, fall harvest, winter dormancy

### 🎯 Progression & Goals
- **Reputation System**: Build trust with towns for better missions
- **Equipment Unlocks**: Discover new tools, machines, aircraft
- **Long-term Goals**: Multiple aircraft, massive farm, rare machinery collection
- **Daily Rewards**: Encourages regular play
- **Multiplayer Farms**: Visit and help other players' farms

## 📁 Project Structure

```
src/
├── ServerScripts/
│   ├── Services/
│   │   ├── PlayerService.lua
│   │   ├── FarmingService.lua
│   │   ├── AviationService.lua
│   │   ├── WeatherService.lua
│   │   ├── NPCService.lua
│   │   ├── ReputationService.lua
│   │   └── SaveService.lua
│   ├── Controllers/
│   │   ├── PlantController.lua
│   │   ├── AnimalController.lua
│   │   ├── AircraftController.lua
│   │   └── EventController.lua
│   └── Main.lua
├── ClientScripts/
│   ├── UI/
│   │   ├── HUD.lua
│   │   ├── FarmingUI.lua
│   │   ├── AviationUI.lua
│   │   ├── ShopUI.lua
│   │   └── MissionUI.lua
│   ├── Controllers/
│   │   ├── InputController.lua
│   │   ├── CameraController.lua
│   │   └── FlightController.lua
│   └── Main.lua
├── Shared/
│   ├── Constants.lua
│   ├── Utilities.lua
│   ├── Config.lua
│   └── Enums.lua
└── Assets/
    ├── Models/
    └── Sounds/
```

## 🚀 Getting Started

1. Clone this repository
2. Open the Roblox project
3. Copy server scripts to ServerScriptService
4. Copy client scripts to StarterPlayer.StarterCharacterScripts
5. Configure spawn locations and world layout
6. Run and enjoy!

## 🎯 Design Philosophy

**Every action matters.** Farming fuels aviation. Aviation unlocks exploration. Exploration unlocks better farming. The cycle continues, rewarding dedication and strategic planning.

---

*Built with ❤️ for Roblox developers*
