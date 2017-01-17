import os,sys
path = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
if not path in sys.path:
	sys.path.insert(1, path)
del path

import numpy as np
import cv2
from VulcanParseAndFormatting import *

ap = CharacterizationInputParsing()
video = cv2.VideoCapture(ap.args["video"])
outFormat = CharacterizationOutputFormatting()

bgSub = cv2.createBackgroundSubtractorMOG2()
X_DETECTION_BORDER = 100

movingAverageArea = 0
numContours = 0
lowY = 1000
highY = 0

lowX = 1000
highX = 0

frameCount = 0
dropletCount = 0

channelWidthInPixels = 0
pixelToMMRatio = 0

def ColorDistance(rgb1,rgb2):
	'''d = {} distance between two colors(3)'''
	rm = 0.5*(rgb1[0]+rgb2[0])
	d = sum((2+rm,4,3-rm)*(rgb1-rgb2)**2)**0.5
	return d

while (video.isOpened()):
	ret, frame = video.read()
	if ret == True:
		frameCount = frameCount + 1
		frameCopy = frame
		cv2.line(frameCopy, (X_DETECTION_BORDER,0), (X_DETECTION_BORDER,600), (255,0,0))
#		frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
		frame = cv2.medianBlur(frame, 13)
#		frame = bgSub.apply(frame)
	#	ret, thresh = cv2.threshold(frame,127,255,0)
		frame = cv2.Canny(frame, 100, 100)			
		ret, thresh = cv2.threshold(frame,127,255,0)
		im2, contours, hierarchy = cv2.findContours(thresh,cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_SIMPLE)	

		areas = []
		largestContour = []
		cArea = 0
		if len(contours) > 0:
			for contour in contours:
				cArea = cv2.contourArea(contour)
#				movingAverageArea = (movingAverageArea*numContours + cArea) / (numContours+1)
				numContours = numContours + 1
#				if currArea > cArea:
#					cArea = currArea
#					largestContour = x
#				print (cArea, movingAverageArea)
#				if cArea > movingAverageArea:
				x,y,w,h = cv2.boundingRect(contour)
				BGR = frameCopy[y+h/2][x+w//2]
				if channelWidthInPixels is 0:
					channelWidthInPixels = (w + h) / 2
					pixelToMMRatio = 1 / float(channelWidthInPixels)
					print channelWidthInPixels, pixelToMMRatio
#				if frameCount > 5:
#					if y < lowY:
#						lowY = y
#						print "LowY: ", lowY
#					if y > highY:
#						highY = y
#						print "highY: ", highY
#					if x < lowX:
#						lowX = x
#						print "LowX: ", lowX
#					if x > highX:
#						highX = x
#						print "HighX: ", highX
#				print BGR

				cv2.rectangle(frameCopy,(x,y),(x+w,y+h),(0,0,255),1)
				cv2.drawContours(frameCopy, contour, -1, (0,0,255), 1)
			
				if x+w < X_DETECTION_BORDER and cArea > 1000:
					cv2.rectangle(frameCopy,(x,y),(x+w,y+h),(0,255,0),1)
					cv2.drawContours(frameCopy, contour, -1, (0,0,255), 1)
	
					if frameCount > 15:	
						dropletCount = dropletCount + 1
						frameCount = 0
						blueDist = ColorDistance(frameCopy[y+h/2][x+w/2],[255,1,1])
						redDist = ColorDistance(frameCopy[y+h/2][x+w/2],[1,1,255])
					
						if blueDist < 2000:
							print dropletCount, " blue", cv2.contourArea(contour)*pixelToMMRatio, cv2.contourArea(contour)
						else:
							print dropletCount, " red", cv2.contourArea(contour)*pixelToMMRatio

		cv2.imshow("frame", frameCopy)

		if cv2.waitKey(1) & 0xFF == ord('q'):
			break
	else:
		break

video.release()
cv2.destroyAllWindows()