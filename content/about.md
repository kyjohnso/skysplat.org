+++
title = "About"
description = "About SkySplat and our mission to make 3D Gaussian Splatting accessible"
+++

# About SkySplat

SkySplat is an open-source initiative dedicated to making **3D Gaussian Splatting** technology accessible to artists, researchers, and developers worldwide. We started by trying to bring drone based video to 3DGS all within the Blender 3D viewport, and we hope to grow into other areas of 3DGS research. Our core mission is to bridge the gap between cutting-edge 3DGS research and practical creative tools.

## What is 3D Gaussian Splatting?

3D Gaussian Splatting (3DGS) is a revolutionary technique for real-time rendering of photorealistic 3D scenes. Unlike traditional polygon-based rendering, 3DGS represents scenes as collections of 3D Gaussian functions, enabling:

- **Real-time performance** with photorealistic quality
- **Novel view synthesis** from sparse input views
- **Efficient storage** and streaming capabilities
- **Advanced physics modeling** with Gaussians as the mathematical primitive

## Our Projects

### SkySplat Blender
Our flagship project is a comprehensive Blender addon that brings the end-to-end 3DGS open source workflow directly into the world's most popular open-source 3D software. Features include:

- Loading video and extracting frames
- Configuring and running COLMAP for Structure from Motion
- Importing and modifying the COLMAP point cloud and cameras
- Exporting the COLMAP model, and
- Configuring and Running [Brush](https://github.com/ArthurBrussee/brush) a popular Rust based 3DGS training and rendering app

[View on GitHub](https://github.com/kyjohnso/skysplat_blender)

### Future Projects
We are actively *exploring* (not yet developing necessarily) these future projects to advanced the state of the art - 
- 3DGS support native to Blender - I gave a [talk about this at bcon25](https://youtu.be/gU8oR7vqfRg?si=5s5JSeQkmGtwRvwE&t=3637) and look forward to exploring this more 
- SkySplat CLI - I think there is huge potential for a CLI "shell" that provides smart interactions between all of the emerging 3DGS technologies

## Community

SkySplat is built by and for the community. We believe in:

- **Open Source** - All our tools are freely available under permissive licenses
- **Collaboration** - We welcome contributions from developers, artists, and researchers
- **Education** - Sharing knowledge through documentation, tutorials, and articles
- **Innovation** - Pushing the boundaries of what's possible with 3DGS technology

## Get Involved

There are many ways to contribute to the SkySplat ecosystem:

- **Code Contributions** - Help develop and improve our tools
- **Documentation** - Write guides, tutorials, and API documentation
- **Testing** - Report bugs and test new features
- **Community Support** - Help other users in discussions and forums
- **Content Creation** - Share your work and workflows with the community

## Contact

- **GitHub**: [github.com/kyjohnso](https://github.com/kyjohnso)
- **Issues**: [Report bugs or request features](https://github.com/kyjohnso/skysplat_blender/issues)
- **Discussions**: [Join community discussions](https://github.com/kyjohnso/skysplat_blender/discussions)

## Acknowledgments

SkySplat builds upon the groundbreaking research in 3D Gaussian Splatting. We're grateful to the research community and the original authors of the 3DGS papers for their innovative work.

Special thanks to:
- The Blender Foundation for creating an amazing open-source platform
- The 3DGS research community for their continued innovations
- Arthur Brussee for his Brush App
- All contributors and users who help make SkySplat better

---

*SkySplat is an independent open-source project and is not affiliated with any commercial entity.*