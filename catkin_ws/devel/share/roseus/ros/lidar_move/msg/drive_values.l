;; Auto-generated. Do not edit!


(when (boundp 'lidar_move::drive_values)
  (if (not (find-package "LIDAR_MOVE"))
    (make-package "LIDAR_MOVE"))
  (shadow 'drive_values (find-package "LIDAR_MOVE")))
(unless (find-package "LIDAR_MOVE::DRIVE_VALUES")
  (make-package "LIDAR_MOVE::DRIVE_VALUES"))

(in-package "ROS")
;;//! \htmlinclude drive_values.msg.html


(defclass lidar_move::drive_values
  :super ros::object
  :slots (_pwm_drive _pwm_angle ))

(defmethod lidar_move::drive_values
  (:init
   (&key
    ((:pwm_drive __pwm_drive) 0)
    ((:pwm_angle __pwm_angle) 0)
    )
   (send-super :init)
   (setq _pwm_drive (round __pwm_drive))
   (setq _pwm_angle (round __pwm_angle))
   self)
  (:pwm_drive
   (&optional __pwm_drive)
   (if __pwm_drive (setq _pwm_drive __pwm_drive)) _pwm_drive)
  (:pwm_angle
   (&optional __pwm_angle)
   (if __pwm_angle (setq _pwm_angle __pwm_angle)) _pwm_angle)
  (:serialization-length
   ()
   (+
    ;; int16 _pwm_drive
    2
    ;; int16 _pwm_angle
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _pwm_drive
       (write-word _pwm_drive s)
     ;; int16 _pwm_angle
       (write-word _pwm_angle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _pwm_drive
     (setq _pwm_drive (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pwm_angle
     (setq _pwm_angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get lidar_move::drive_values :md5sum-) "180768e2d6cce7b3f71749adb84f7b29")
(setf (get lidar_move::drive_values :datatype-) "lidar_move/drive_values")
(setf (get lidar_move::drive_values :definition-)
      "int16 pwm_drive
int16 pwm_angle

")



(provide :lidar_move/drive_values "180768e2d6cce7b3f71749adb84f7b29")


