# Training a Model

By now, you should have a labeled dataset with images and XML label files. If not, you can also use the pre-labeled dataset found [here](https://drive.google.com/drive/folders/1yPct0n2T-s5_tAtN80OpuXcrx1qTjUCR?usp=sharing) on our Robotics Drive. We can then begin training a custom object detection model. 

## Steps

1. Get access to a CUDA-enabled GPU for faster runtimes (use [Google Colab](https://colab.research.google.com/notebooks/intro.ipynb) if you're computer doesn't have one)
2. Download [Detecto](https://github.com/alankbi/detecto) using pip (the package we use for object detection)
3. Load in your dataset and create a model using Detecto (see [examples and docs](https://detecto.readthedocs.io/en/latest/index.html) for guidance)
4. Train the model to detect the start gates and start ticks
5. Test your model on some images and videos and save the model if it performs well
6. See if you can improve the model with some [PyTorch transforms](https://pytorch.org/docs/stable/torchvision/transforms.html)

## Resources

1. [Detecto API documentation](https://detecto.readthedocs.io/en/latest/api/index.html)
2. [Medium tutorial](https://towardsdatascience.com/build-a-custom-trained-object-detection-model-with-5-lines-of-code-713ba7f6c0fb)
3. [Colab demo](https://colab.research.google.com/drive/1ISaTV5F-7b4i2QqtjTa7ToDPQ2k8qEe0#scrollTo=I_N53zxDtLcI)

## Results

If all goes well, your model should produce results on par with the following:

![Image with bounding boxes around start gate and start tick](/cv/assets/gate_detection.png)
