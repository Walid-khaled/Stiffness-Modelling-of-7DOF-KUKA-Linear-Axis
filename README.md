## Stiffness-Modelling-of-7DOF-KUKA-Linear-Axis

This repository contains the implementation of the stiffness analysis of 7DOF KUKA linear axis robot. It is implemented using VJM technique to fnd the EE deﬂection at different points in the workspace. After deﬂection calculations, deﬂection scatter plots are built to analyse the maximum deﬂection due to 100N force along x, y, z directions respectively. The importance of stiffness modelling is to improve the overall accuracy of the robot by calculating the difference between the desired pose and the actual pose of the robot due to the applied load. 

This manipulator is kinematically redundant. You can check the redundancy resolution solution in this [repo](https://github.com/Walid-khaled/7DOF-KUKA-Linear-Axis-Forward-and-Inverse-Kinematics.git).

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
  <img src="https://user-images.githubusercontent.com/90580636/176642742-3945f3dc-4f14-4bd9-b1c6-ca7385e6cb51.png" width="400" height="250" />
  <img src="https://user-images.githubusercontent.com/90580636/176642827-8b053d7b-a210-42f9-ad79-c2fbdb9b7e8f.png" width="400" height="250" />
</p>

<p float="left">
  <img src="https://user-images.githubusercontent.com/90580636/176642941-8221293b-32a3-4926-b8be-81c5882bd9c4.png" width="400" height="250" />
  <img src="https://user-images.githubusercontent.com/90580636/176643122-6665294c-1182-407a-9539-6ae63437e8ce.png" width="400" height="250" />
</p>

## How to run
First open **IK.m** file and select the preferable redundancy resolution approach as shown below.  
![image](https://user-images.githubusercontent.com/90580636/171529073-6cd53dc4-00f9-4a7c-ab84-731ca4e7e62f.png)

Then run **main_VJM.m** file for calculations and visualization.

