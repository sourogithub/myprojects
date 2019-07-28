import numpy as np
import cv2
import math
import sys
import os
import time
start = time.time()
filename = str(sys.argv[1])
#print("Capturing frame from:" + filename)
cap = cv2.VideoCapture(filename)
cap.set(cv2.CAP_PROP_POS_MSEC,72850)
cap.set(5,1)
#print(cap.get(5))
try:
    if not os.path.exists('frame1'):
        os.makedirs('frame1')
except OSError:
    print ('Error: Creating directory of data')
success,frame = cap.read()
count = 0
while count<=44:
    success,frame = cap.read()
    cv2.imwrite("./frame1/frame%d.jpg" % count,frame)
    if cv2.waitKey(10) == 27:
        break
    count += 1


img1 = cv2.imread('./frame1/frame0.jpg',0)
#print(img1)
template2 = cv2.imread('./frame1/goalline1.jpg',0)
#print(template2)
w1,h1 = template2.shape[::-1]
template3 = cv2.imread('./frame1/goalline2.jpg',0)
w2,h2 = template3.shape[::-1]
#methods = ['cv2.TM_CCOEFF','cv2.TM_CCOEFF_NORMED','cv2.TM_CCORR','cv2.TM_CCORR_NORMED','cv2.TM_SQDIFF','cv2.TM_SQDIFF_NORMED']

result1 = cv2.matchTemplate(img1,template2,cv2.TM_SQDIFF_NORMED)
#print(result1)
min_val,max_val,min_loc,max_loc = cv2.minMaxLoc(result1)
left = min_loc
ref1 = (left[0],left[1] + h1)
#print(ref1)

result2 = cv2.matchTemplate(img1,template3,cv2.TM_SQDIFF_NORMED)
min_val,max_val,min_loc,max_loc = cv2.minMaxLoc(result2)
right = min_loc
ref2 = (right[0] + w2,right[1] + h2)
#print(ref2)

x_ref = ref2[0]-ref1[0]
y_ref = ref2[1]-ref1[1]
g_l = math.sqrt(x_ref*x_ref + y_ref*y_ref)
g_s = y_ref/x_ref

#print(g_l)
#print(x_ref,y_ref)
#print(g_s)
#angle1 = math.degrees(math.atan(g_s))
#print(angle1)

inter_x = (ref1[0] + math.sqrt(0.798)*ref2[0])/(1+math.sqrt(0.798))
inter_y = g_s * (inter_x - ref1[0]) + ref1[1]
#print(inter_x,inter_y)

p_s = (462 - inter_y)/(1058 - inter_x)
#print(p_s)

angle2 = math.degrees(math.atan(p_s))
#print(angle2)


i = 0
j = 1
s2='/home/souro/Documents/iiest/MTECH PROJECT/folder1/imgprocessing in opencv/frame1/ball'
s='/home/souro/Documents/iiest/MTECH PROJECT/folder1/imgprocessing in opencv/frame1/frame'
t='.jpg'
while i<=41:
    k = s+str(i)+t
    img = cv2.imread('%s'%k,0)
    if 0<=i<=1:
        j = 1
    elif 2<=i<=10:
        j = 2
    elif 11<=i<=15:
        j = 3
    elif i == 16:
        j = 4
    elif 17<=i<=22:
        j = 5
    elif i == 23:
        j = 6
    elif 24<=i<=27:
        j = 0
    elif 28<=i<=36:
        j = 7
    elif 37<=i<=38:
        j = 0
    elif 39<=i<=40:
        j = 8
    else:
        j = 9

    if j!=0:
        k2 = s2+str(j)+t
        template = cv2.imread('%s'%k2,0)
        w,h = template.shape[::-1]
        res = cv2.matchTemplate(img,template,cv2.TM_SQDIFF_NORMED)
        min_val,max_val,min_loc,max_loc = cv2.minMaxLoc(res)
        top_left = min_loc
        bottom_right = (top_left[0] + w, top_left[1] + h)
        #cv2.rectangle(img,top_left,bottom_right,255,2)
        #cv2.namedWindow('image1',cv2.WINDOW_NORMAL)
        #cv2.imshow('image1',img)
        img_x = (top_left[0] + bottom_right[0])/2
        img_y = (top_left[1] + bottom_right[1])/2

        x_point = img_x
        y_point = abs(p_s*(img_x - inter_x) + inter_y)
        z_point = y_point - img_y
        if i!=0:
            distance = distance + math.sqrt((x_point-prev_x)*(x_point-prev_x) + (y_point-prev_y)*(y_point-prev_y) + (z_point-prev_z)*(z_point-prev_z))
        else:
            distance = 0
        prev_x = x_point
        prev_y = y_point
        prev_z = z_point
        f = open("./frame1/ballposition.txt","a+")
        if i==0:
            f.write("frame\t(img_x,img_y)\t(x,y,z)\t\tdistance\n")
        f.write("%d\t"%i)
        f.write("(%d,%d)\t"% (img_x,img_y))
        f.write("(%d,%d,%d)\t"% (x_point,y_point,z_point))
        f.write("%d\n"% distance)
        f.close()
    i = i+1
cv2.waitKey(0)    
cv2.destroyAllWindows()
scaling_factor = 24*30/g_l
total_time = 30*40
speed = (scaling_factor*distance)*36/total_time

#print("the ball speed is:",speed,"kmph")
end = time.time()
exec_time = end-start
print(exec_time)
