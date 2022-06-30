## Stiffness-Modelling-of-7DOF-KUKA-Linear-Axis

This repository contains the implementation of the stiffness analysis of 7DOF KUKA linear axis robot. It is implemented using VJM technique to fnd the EE deﬂection at different points in the workspace. After deﬂection calculations, deﬂection scatter plots are built to analyse the maximum deﬂection due to 100N force along x, y, z directions respectively. The importance of stiffness modelling is to improve the overall accuracy of the robot by calculating the difference between the desired pose and the actual pose of the robot due to the applied load. 

## 7DOF-KUKA-Linear-Axis-Forward-and-Inverse-Kinematics
Kuka on linear axis includes a further axis to the robot, so it is considerably extending the workspace of the robot. The advantages of the redundant robots are increasing manipulability in specified directions, uniform distribution of velocities and accelerations, minimizing energy consumption, optimizing execution time, etc. However, there are also such drawbacks, as complicated calculations for IK and motion control, and greater structural complexity of construction. 

A manipulator is kinematically redundant when it possesses more degrees of freedom than it is needed to execute a given task. In other words, there are more local coordinate variables than global. The Redundancy Resolution is necessary because it allows to avoid singularity, obstacles and to smooth manipulation around the workspace. The solution for the redundancy is a cost function optimization, where the cost function can be i) energy-based  or ii) minimizing the distance. The Redundancy Resolution includes three methods, which are
- Jacobian-based (Damped Least Square and Weighted Pseudoinverse)
- Null Space
- Task Augmentation

In this repository, the implementation of forward and inverse kinematics by redundancy resolution is presented.

<p float="left">
  <img src="https://user-images.githubusercontent.com/90580636/171466339-c1a0e96f-71ec-41f2-8891-c0522536ea04.png" width="300" height="200" />
  <img src="https://user-images.githubusercontent.com/90580636/171468054-fc96ca19-5f39-4893-9723-24872b333bb4.png" width="450" height="200" />
</p>

### Forward Kinematics can be written as follows:
![image](https://user-images.githubusercontent.com/90580636/171468322-838cf1ab-ec6d-4d20-b146-d6a899b7f772.png)


## Virtual Joint Modelling (VJM)
<p float="left">
  <img src="https://user-images.githubusercontent.com/90580636/176641612-b8d18086-d22f-4945-a42b-9ea2e4ca14e0.png" width="400" height="250" />
  <img src="https://user-images.githubusercontent.com/90580636/176641725-41cd1123-0a58-4b9a-bc58-801c1360e917.png" width="400" height="250" />
</p>

<p float="left">
  <img src="https://user-images.githubusercontent.com/90580636/176641828-0c636d0a-7f44-4b83-abe9-9c66e3b4d3f2.png" width="400" height="250" />
  <img src="https://user-images.githubusercontent.com/90580636/176641906-647ef014-000a-4f34-a2d9-c97951b3ef51.png" width="400" height="250" />
</p>

<p float="left">
  <img src="https://user-images.githubusercontent.com/90580636/176641995-6c439eca-dd76-491e-bf04-24ce92a01fb9.png" width="400" height="250" />
  <img src="https://user-images.githubusercontent.com/90580636/176642042-cf0b13dc-c89e-4061-8212-69a0942de19e.png" width="400" height="250" />
</p>

<p float="left">
  <img src="https://user-images.githubusercontent.com/90580636/176642127-bedd2e6c-f490-4725-9753-ea8edc08fb12.png" width="400" height="250" />
  <img src="https://user-images.githubusercontent.com/90580636/176642187-5f75fb47-dcd3-4a2a-8ba5-6074c552d267.png" width="400" height="250" />
</p>

## Accuracy and Execution Time
<p float="left">
  <img src="https://user-images.githubusercontent.com/90580636/171470183-2ce3e89f-c301-4c04-a6e9-2bafcdb007ac.png" width="400" height="250" />
  <img src="https://user-images.githubusercontent.com/90580636/171470229-4b67a4a2-a5a0-4eb3-bdb6-4ea947d22362.png" width="400" height="250" />
</p>

## How to run
First open **IK.m** file and select the preferable redundancy resolution approach as shown below.  
![image](https://user-images.githubusercontent.com/90580636/171529073-6cd53dc4-00f9-4a7c-ab84-731ca4e7e62f.png)

Then run **main_redundancy_resolution.m** file for calculations and visualization.

