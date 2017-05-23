import glob
import cv2

files = glob.glob('*.jpg')

for file_name in range(len(files)):
	img = cv2.imread(files[file_name],0)
	img = cv2.cvtColor(img,cv2.COLOR_GRAY2RGB)
	print (files[file_name])
	cv2.imwrite(files[file_name]+".jpg",img)
