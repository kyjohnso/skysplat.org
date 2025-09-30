+++
title = "SkySplat Blender Installation"
description = "Step-by-step guide to installing the SkySplat Blender addon"
weight = 1
[taxonomies]
tags = ["installation", "blender", "setup"]
+++

This guide will walk you through installing the SkySplat Blender addon for 3D Gaussian Splatting support.

<!-- more -->

## Prerequisites

- **Blender 3.6 or later** (recommended: Blender 4.0+)
- **Python 3.10+** (included with Blender)
- **Operating System**: Windows 10+, macOS 10.15+, or Linux

## Installation Methods

### Method 1: Install from Release (Recommended)

1. **Download the latest release**
   - Visit the [SkySplat Blender releases page](https://github.com/kyjohnso/skysplat_blender/releases)
   - Download the latest `.zip` file (e.g., `skysplat_blender_v1.0.0.zip`)

2. **Install in Blender**
   - Open Blender
   - Go to `Edit > Preferences > Add-ons`
   - Click `Install...` button
   - Select the downloaded `.zip` file
   - Click `Install Add-on`

3. **Enable the addon**
   - Search for "SkySplat" in the add-ons list
   - Check the box next to "SkySplat: 3D Gaussian Splatting Tools"
   - Click `Save Preferences`

### Method 2: Install from Source

1. **Clone the repository**
   ```bash
   git clone https://github.com/kyjohnso/skysplat_blender.git
   cd skysplat_blender
   ```

2. **Create addon package**
   ```bash
   python scripts/package.py
   ```

3. **Install in Blender** (follow steps 2-3 from Method 1)

## Verification

After installation, verify the addon is working:

1. **Check the menu**
   - Look for "SkySplat" in the top menu bar
   - Or find it in `File > Import` and `File > Export`

2. **Test import**
   - Try importing a sample `.ply` file
   - The 3DGS data should appear in the viewport

## Troubleshooting

### Common Issues

**Addon doesn't appear after installation**
- Ensure you're using Blender 3.6 or later
- Check that the addon is enabled in Preferences
- Restart Blender

**Import/Export options missing**
- Verify the addon is enabled
- Check the console for error messages (`Window > Toggle System Console`)

**Performance issues**
- Ensure your GPU supports OpenGL 4.3 or later
- Try reducing the point cloud density for large datasets

### Getting Help

- [Report issues on GitHub](https://github.com/kyjohnso/skysplat_blender/issues)
- [Join community discussions](https://github.com/kyjohnso/skysplat_blender/discussions)
- Check the FAQ section

## Next Steps

- Quick Start Tutorial
- User Interface Overview
- Import/Export Guide