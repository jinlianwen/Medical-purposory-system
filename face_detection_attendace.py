import cv2
import face_recognition
import os
from gtts import gTTS
import pyttsx3


# Path to the folder containing images of known individuals
dataset_path = 'image_folder'

# Load known face encodings and corresponding names from the dataset folder
known_face_encodings = []
known_face_names = []

for filename in os.listdir(dataset_path):
    if filename.endswith(".jpg") or filename.endswith(".png"):
        image_path = os.path.join(dataset_path, filename)
        img = face_recognition.load_image_file(image_path)
        face_encoding = (face_recognition.face_encodings(img)[0])
        known_face_encodings.append(face_encoding)
        name = os.path.splitext(filename)[0]
        known_face_names.append(name)

# Initialize text-to-speech engine
engine = pyttsx3.init()

# Initialize counters for speech
speech_count = 0
max_speech_count = 4  # Adjust this value to control how many times the speech is dictated

# Initialize the webcam capture
cap = cv2.VideoCapture(0)

while True:
    # Read a frame from the webcam
    success, img = cap.read()

    # Resize the frame to improve processing speed
    imgS = cv2.resize(img, (0, 0), None, 0.25, 0.25)

    # Convert the frame to RGB format
    imgS = cv2.cvtColor(imgS, cv2.COLOR_BGR2RGB)

    # Locate faces in the frame
    facesCurFrame = face_recognition.face_locations(imgS)
    encodesCurFrame = face_recognition.face_encodings(imgS, facesCurFrame)

    for encodeFace, faceLoc in zip(encodesCurFrame, facesCurFrame):
        # Compare the face encoding to the known face encodings to identify the person
        matches = face_recognition.compare_faces(known_face_encodings, encodeFace)
        name = "Unknown"  # Default to "Unknown" if no match is found

        # Find the index of the first match and assign the corresponding name
        if True in matches:
            first_match_index = matches.index(True)
            name = known_face_names[first_match_index]

        # If the speech count is less than the maximum count, dictate the name
        if speech_count < max_speech_count:
            if name == "Unknown":
                engine.say("The person is Unknown")
            else:
                engine.say(f"The name of the person is {name}")
            engine.runAndWait()
            speech_count += 1

        # Draw a rectangle around the detected face and label it with the person's name
        y1, x2, y2, x1 = faceLoc
        y1, x2, y2, x1 = y1 * 4, x2 * 4, y2 * 4, x1 * 4
        cv2.rectangle(img, (x1, y1), (x2, y2), (0, 255, 0), 2)
        cv2.putText(img, name, (x1 + 6, y2 - 6), cv2.FONT_HERSHEY_COMPLEX, 1, (255, 255, 255), 2)

    # Display the frame with rectangles and names
    cv2.imshow('Webcam', img)

    # Exit the loop if the 'q' key is pressed or if the speech count reaches the maximum
    if cv2.waitKey(1) & 0xFF == ord('q') or speech_count >= max_speech_count:
        break

# Release the webcam and close the OpenCV window
cap.release()
cv2.destroyAllWindows()