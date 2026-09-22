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
```text
[https://raw.githubusercontent.com/cgio/tv-assets/main/icons/projectivy-1.1.9/](https://raw.githubusercontent.com/cgio/tv-assets/main/icons/projectivy-1.1.9/)<icon-name>.png
