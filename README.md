# PolicySummaryApp

A simple SwiftUI iOS application that displays a summary of insurance policies.  
The app demonstrates **MVVM (Model-View-ViewModel) architecture**, **clean code practices**, and **SwiftUI** bindings.


## Features

- **MVVM Architecture** – `PolicyListViewModel` handles business logic, while SwiftUI views remain lightweight.
- **Dynamic list of policies** loaded from a local JSON file (`policies.json`).
- **Expandable/collapsible policy rows** to reveal more details.
- **Dependency Injection** for testable ViewModel.
- **Type-safe model layer** with `Codable`-compliant `Policy` struct.
- **SwiftUI-first design** with Combine-powered data binding.

## Screenshots

<p>
  <img src="./Readme-Assets/Ping1.png" width="30%" alt="Image 1">
  <img src="./Readme-Assets/Ping2.png" width="30%" alt="Image 2">
</p>

```
PolicySummaryApp/
│
├── README.md
├── Readme-Assets/
│   ├── Home.png
│   └── Policies.png

```

## Project Structure


```
PolicySummaryApp/
├── Models/
│   └── Policy.swift            # Defines the Policy model
├── ViewModels/
│   └── PolicyListViewModel.swift  # Business logic and data loading
├── Views/
│   ├── PolicyListView\.swift    # Main list UI
│   └── PolicyRowView\.swift     # Single policy row with expandable details
├── Resources/
│   └── policies.json           # Sample policies data
└── PolicySummaryAppApp.swift   # App entry point
```


## Installation & Setup

1. Clone this repository:
    bash
    git clone https://github.com/your-username/PolicySummaryApp.git
    cd PolicySummaryApp

2. Open `PolicySummaryApp.xcodeproj` in Xcode.

3. Build and run on the iOS Simulator or a real device (iOS 15.0+).



## Usage

- On launch, the app loads policies from `policies.json` in the app bundle.
- Tap on a policy row to **expand/collapse** additional details:
  - Next Premium Due
  - Policy Start/End Dates
  - Sum Assured
  - Premium Frequency

## Requirements

* Xcode 15.0+
* iOS 15.0+
* Swift 5.7+
* SwiftUI
