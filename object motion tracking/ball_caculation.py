import cv2
import math
img = cv2.imread('/home/souro/Documents/iiest/MTECH PROJECT/imgprocessing in opencv/frame2/frame46.jpg',0)
template1 = cv2.imread('/home/souro/Documents/iiest/MTECH PROJECT/imgprocessing in opencv/frame2/endpoint2.jpg',0)
w1,h1 = template1.shape[::-1]

template2 = cv2.imread('/home/souro/Documents/iiest/MTECH PROJECT/imgprocessing in opencv/frame2/endpoint3.jpg',0)
w2,h2 = template2.shape[::-1]

template3 = cv2.imread('/home/souro/Documents/iiest/MTECH PROJECT/imgprocessing in opencv/frame2/goalline.jpg',0)
w3,h3 = template3.shape[::-1]

result1 = cv2.matchTemplate(img,template3,cv2.TM_SQDIFF_NORMED)
min_val,max_val,min_loc,max_loc = cv2.minMaxLoc(result1)
left = min_loc
end_point1 = (left[0],left[1] - h1)

result2 = cv2.matchTemplate(img,template2,cv2.TM_SQDIFF_NORMED)
min_val,max_val,min_loc,max_loc = cv2.minMaxLoc(result2)
left = min_loc
end_point2 = (left[0] + w2,left[1] - h2)

end_slope = (end_point2[1] - end_point1[1])/(end_point2[0] - end_point1[0]) 
#print(end_point1,end_point2,end_slope)

result3 = cv2.matchTemplate(img,template3,cv2.TM_SQDIFF_NORMED)
min_val,max_val,min_loc,max_loc = cv2.minMaxLoc(result3)
left = min_loc
gl1 = (left[0],left[1] - h3)
gl2 = (left[0] + w3,left[1] - h3)
gl_slope = (gl2[1]-gl1[1])/(gl2[0]-gl1[0])
#print (gl1,gl2,gl_slope) 

angle = math.degrees(math.atan((gl_slope - end_slope)/(1 + gl_slope*end_slope)))
print(angle)

inter_y = gl1[1]
inter_x = (end_slope * (gl1[1] + end_point1[1])) + end_point1[0]

#print(inter_x,inter_y)

ratio = (inter_x - end_point1[0])/(end_point2[0] - inter_x)
print(ratio)

