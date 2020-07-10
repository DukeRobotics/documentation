# robosub-cv
Computer Vision
## label-img
Frame_extractor.ipynb takes in an input video and extracts/outputs each individual frame to an output folder.
### Usage
1. Use either frame_extractor_local to extract frames from a video on your local drive or frame_extractor_colab to extract frames from a video stored on drive.
2. To run frame_extractor_local, in command line, `cd` to the directory containing the file and enter `jupyter notebook`. Open the file and run the cells.
3. To run frame_extractor_colab, first upload the file to Google Drive and open it as a Colab notebook.
4. Download labelImg to label images. In command line, run `pip3 install labelImg`. Once installed, enter `labelImg` to run the software.
5. In labelImg, click Open Dir, select the folder containing the extracted frames, and start drawing boxes.
6. Keyboard shortcuts for labelImg: hit `w` to create a new box, `CTRL + s` to save (will save XML to same directory as input frames by default...this is what we want), `d` to move to next frame.
