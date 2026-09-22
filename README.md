# Vigilante 8 Map Atmosphere & Sky Color Editor (V8COLORS)

A graphical Delphi 7 utility designed to visually read, tweak, and modify the environment color profiles and fog density tables (`COLS` binary block sub-structures) from the **Vigilante 8** engine on the PlayStation 1 (PS1).

## Features
- **Visual Palette Mapping:** Automatically binds 3-byte layout structures from raw data files straight into active Windows graphical component structures (`TPanel.Color`).
- **Standard Palette Selector:** Seamlessly links standard OS color palette boxes (`TColorDialog`) onto separate interactive tiles for click-to-edit configuration.
- **Fog & Density Management:** Uses 1-byte standard data variables routed directly to workspace trackers (`TTrackBar`) to adjust depth parameters (Near, Mid, and Far clip fog lines).
- **Direct Variable Mapping:** Separates ambient level parameters into 8 independent control configurations to protect alignment offsets during data saving.

## Internal Data Layout Map
The tool targets and decodes structured environment sector blocks using a 32-byte layout matrix (8 nodes × 4 bytes each):
- **Bytes 0–2:** Raw 24-bit RGB/BGR Color value assigned to a scene component (Sky, Sun, Shadows, etc.).
- **Byte 3:** Technical attribute flag (Alpha transparency layer, lighting density multiplier, or fog clip ranges).

## Channel Configuration Definitions
The interface exposes and maps the exact rendering registers utilized by the Luxoflux engine:
1. **Sky Color:** Modifies the top horizon/dome colors.
2. **Fog Far / Mid / Near:** Gradients for distance clipping to mask the PS1 hardware rendering limitations.
3. **Sun Color:** Global directional vertex light tint falling over the environment.
4. **Shadow on Model:** Ambient shadowing profile projected onto vehicle bodies and static map props.

## Usage
1. Open the tool inside a compiled workspace and click **Open**.
2. Select your extracted atmosphere data cluster file (e.g., `COLS0000` or a raw chunk dump).
3. The panels will automatically display the map's default environment profile, and the tracking bars will snap to their active configurations.
4. Click on any color tile to change its hue using the visual palette map. Slide the trackbars to edit atmospheric fog thickness.
5. Click **Save** to output your customized palette layout file, ready to be patched back into your `.EXP` level package.

## Original Credits
Developed by **DenGame** (2009). Released as Open Source to preserve legacy console reverse-engineering tooling history.
