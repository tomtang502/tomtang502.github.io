---
layout: page
title: AI Toolbox
description: A comprehensive AI toolbox that enables users without math and code background to apply and visualize various machine learning algorithms—such as linear and logistic regression, as well as neural networks—on their datasets with just a few clicks, saving and reusing trained models. 
img: assets/img/projects/ait/aitoverview.png
importance: 1
category: AI & DL
related_publications: false
---
A quick <a href="https://www.youtube.com/watch?v=Sf7zYb4NZZ8">demo video</a> on youtube (I played the background music with oboe).

As the name of the project says, AI Toolbox (AIt) is a comprehensive AI (machine learning) tool box that allows any person to utilize a typical machine learning algorithm in their dataset with just several clicks. For first-time experienced machine learning users, single variable linear regression and one to two variable logistic regression can help them analyze, visualize, and find the potential trend, and even visualize the potential trend of simple data (either their own data or pre-stored sample data). For more complex tasks, Alt has multivariable linear regression, multivariable logistic regression, and neural network(NN) that are ready to be applied on the complex data with several clicks of buttons. The trained model will be saved and reused. 

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/ait/lir.png" title="lir" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/ait/lor.png" title="lor" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/ait/ann.png" title="ann" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    AIt support linear regression, logistic regression, and neural network (all hyperparamters are customizable).
</div>

AIt support various visualization of both input data and trainning process that are designed specifically for each ml algorithm.
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/ait/lirmv.png" title="lirmvtrain" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/ait/lorviz.png" title="lorviz" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/ait/anntraining.png" title="anntrain" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Visualization of training process
</div>

In AIt, data can be automatically processed from a simple csv file, so user only need to how to use excel or google sheet to use AIt to train their own model/algorithm fit to make prediction on future outcome with simple clicks. AIt also shows the top 10 samples in the trainning data so that user is able to confirm that the format of their data is understood correctlt by AIt in csv.
<div class="row justify-content-sm-center">
    <div class="col-sm-4 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/projects/ait/housedatacsv.png" title="housedatacsv" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm-8 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/projects/ait/readdata.png" title="readdata" class="img-fluid rounded z-depth-1" %}
    </div>
     <div class="col-sm-8 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/projects/ait/housedataviz.png" title="housedataviz" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Automated data preprocessing
</div>

Trained model can be exported from AIt (as a python file, by the time I was doing this project, I was not allowed to use torch for this term project) to support offline prediction, which can be simply run as follow:

{% raw %}

```sh
python modelname.py #This defaults to model save time if model name is not given when saved
Please enter your independent variable x1 here
0.89
Please enter your independent variable x2 here
0.6
output: 1
```

{% endraw %}

AIt has the image classification function that allow user to use NN to clasify images of different type (e.g. cat, dog, bird). User only have to put different type of images in separate directories, then pass the parent directory path to Alt, and adjust the NN architecture and click run to train the NN classifier. 
<video width="600" controls>
  <source src="/assets/video/altimagetrain.webm" type="video/webm">
  Your browser does not support the video tag.
</video>
Then, user can save the trained NN classifier and use it to make prediction by passing image path to the saved model.
{% raw %}

```sh
python modelname.py #This defaults to model save time if model name is not given when saved
Please enter your your image path here
/path/to/image.jpg
output: doggy
```

{% endraw %}

AIt also gives an example of how to use NN to do handwritten digit recognition.
<video width="600" controls>
  <source src="/assets/video/hwrecog.webm" type="video/webm">
  Your browser does not support the video tag.
</video>
