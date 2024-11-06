## Image Processing: Edge Detection and Filtering in MATLAB

### Project Overview
This project aims to enhance the understanding and application of various image processing techniques using MATLAB. The focus is on edge detection and filtering methods that improve image quality, reduce noise, and identify key features within an image. The project utilizes algorithms such as Sobel, Prewitt, Canny, Laplacian of Gaussian (LoG), and Roberts, as well as advanced filtering techniques including Gaussian, median, and bilateral filters.

### Objectives
- To apply multiple edge detection techniques for comprehensive analysis.
- To compare different filtering methods for noise reduction and detail preservation.
- To visualize and save processed images for further inspection.

### Features
- **Edge Detection Techniques**:
  - **Sobel**: Detects edges by computing the gradient magnitude of the image.
  - **Prewitt**: Similar to Sobel but uses a different kernel for gradient computation.
  - **Canny**: Utilizes a multi-stage process that includes noise reduction, gradient calculation, non-maximum suppression, and hysteresis thresholding.
  - **Laplacian of Gaussian (LoG)**: Combines Gaussian smoothing with the Laplacian operator for edge detection.
  - **Roberts**: Highlights edges using a diagonal difference approach.
- **Filtering Techniques**:
  - **Gaussian Filter**: Smooths the image using a Gaussian kernel to reduce high-frequency noise.
  - **Median Filter**: Reduces noise while preserving edges by replacing each pixel’s value with the median of its neighborhood.
  - **Bilateral Filter**: Edge-preserving smoothing that reduces noise while maintaining sharp edges.

### Prerequisites
Ensure you have the following installed:
- MATLAB (preferably the latest version)
- Image Processing Toolbox

### Project Structure
```
.
|-- README.md
|-- script.m
|-- naruto.jpeg
```

### Installation and Setup
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/advanced-image-processing.git
   ```
2. **Navigate to the Project Directory**:
   ```bash
   cd image-processing
   ```
3. **Open MATLAB** and set the current folder to the project directory.

### Running the Project
1. Ensure `naruto.jpeg` is placed in the root or adjust the `input_image_path` in `script.m` accordingly.
2. Run the script in MATLAB:
   ```matlab
   script

