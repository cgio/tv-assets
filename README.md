# TV Assets

Asset repository for personal Android TV / Fire TV provisioning, custom launcher configurations (ChillHub, Projectivy), and media frontend setups (Nuvio). Mostly, this repo's assets are used privately, but are kept public for practical and efficient private deployment via GitHub's CDN infrastructure.

---

## Structure Overview

### 1. Root Directory & `nuvio/` (Nuvio Collections)
Contains artwork for a custom Nuvio Collections configuration. 

* The related AIOMetadata configuration/JSON export is required (and presently not public) for the collection to operate correctly. 
* A paired and adequately configured AIOStreams instance is also assumed.
* Files in the root directory remain in place to maintain backwards compatibility with active devices. The identical files in `nuvio/` represent the forward-facing paths for future collection updates.
* **Note on formatting:** `collections-library-backdrop.jpg` remains a `.jpg` (with its original image data) and is intentionally not a `.webp` because lossless compression/conversion to `.webp` (or re-encoding as `.jpg` via leading tools) resulted in a drastically larger file.

### 2. `icons/` (Launcher Iconography)
Contains standardized landscape card icons (320x180 `nodpi`, 16:9 ratio) with normalized lowercase filenames, optimized for quick manual URL entry or bulk script injection.

* **`icons/projectivy-1.1.9/`**: Extracted directly from Projectivy Icon Pack v1.1.9 master assets.
  * Contains 869 normalized `.png` images.
  * Includes `icons.json`—a complete mapping reference documenting Android package names, activity components, drawable IDs, and assigned filenames.

**Raw URL Format:**
`https://raw.githubusercontent.com/cgio/tv-assets/main/icons/projectivy-1.1.9/<icon-name>.png`

*Examples:*
* `https://raw.githubusercontent.com/cgio/tv-assets/main/icons/projectivy-1.1.9/tivimate.png`
* `https://raw.githubusercontent.com/cgio/tv-assets/main/icons/projectivy-1.1.9/smarttube.png`
* `https://raw.githubusercontent.com/cgio/tv-assets/main/icons/projectivy-1.1.9/stremio.png`
* `https://raw.githubusercontent.com/cgio/tv-assets/main/icons/projectivy-1.1.9/netflix.png`

#### Direct Input via ADB (Fire TV / Android TV)
Because tools like atvTools struggle with reliable clipboard pasting on Fire OS / modern Android TV builds, the cleanest method to populate the launcher URL field is sending keystrokes directly over ADB while the launcher input box is active on screen:

`adb -s <IP_OR_SERIAL> shell input text "https://raw.githubusercontent.com/cgio/tv-assets/main/icons/projectivy-1.1.9/netflix.png"`

### 3. `wallpapers/`
Static background imagery for leanback television home screens.

### 4. Releases (`apks`)
The repository's [Releases area](https://github.com/cgio/tv-assets/releases/tag/apks) hosts television-ready Android package builds (`armeabi-v7a` / `nodpi`) for device provisioning via TV Bro or ADB.

* Includes core TV media frontends, utility tools, and architecture-merged standalone builds (e.g., `com.att.tv`).
* Certain provisioning utilities (e.g., `cloak.apk`, `restore.apk`) require additional non-public configuration files to operate.
* Hosted via GitHub Releases to ensure compatibility with TV-based web browsers while keeping binary blobs out of the primary Git tree history.

**Direct Release Download Format:**
`https://github.com/cgio/tv-assets/releases/download/apks/<filename>.apk`
