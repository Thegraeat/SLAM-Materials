# Cloud Info
Header header 
# 记录每根扫描线起始第5个激光点在一维数组中的索引
int32[] startRingIndex
#记录每根扫描线倒数第5个激光点在一维数组中的索引
int32[] endRingIndex
#记录激光点对应的Horizon_SCAN方向上的索引
int32[]  pointColInd # point column index in range image
float32[] pointRange # point range 
#imu和odom的数据是否可用
int64 imuAvailable
int64 odomAvailable

#保存该帧起始时间imu的角度，已经转换到lidar坐标系
# Attitude for LOAM initialization
float32 imuRollInit 
float32 imuPitchInit
float32 imuYawInit

#用当前激光帧起始时刻的imu里程计
# Initial guess from imu pre-integration
float32 initialGuessX
float32 initialGuessY
float32 initialGuessZ
float32 initialGuessRoll
float32 initialGuessPitch
float32 initialGuessYaw

# Point cloud messages
#发布当前激光帧运动畸变校正后的点云，有效点
sensor_msgs/PointCloud2 cloud_deskewed  # original cloud deskewed
#角点，eg:16x6x20,一般少于这个数量
sensor_msgs/PointCloud2 cloud_corner    # extracted corner feature
#平面点
sensor_msgs/PointCloud2 cloud_surface   # extracted surface feature