.class public Lcom/nianticlabs/nia/sensors/NianticSensorManager;
.super Lcom/nianticlabs/nia/contextservice/ContextService;
.source "NianticSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final ANGLE_CHANGE_THRESHOLD_DEGREES:F = 1.0f

.field private static final DECLINATION_UPDATE_INTERVAL_MSEC:I = 0x927c0

.field private static final ENABLE_VERBOSE_LOGS:Z = false

.field private static final MAX_SENSOR_UPDATE_DIFF_MSEC:I = 0x1388

.field private static final MIN_SENSOR_UPDATE_INTERVAL_MSEC:I = 0x32

.field private static final SINE_OF_45_DEGREES:F

.field private static final TAG:Ljava/lang/String; = "NianticSensorManager"


# instance fields
.field private accelerometer:Landroid/hardware/Sensor;

.field private accelerometerData:[F

.field private accelerometerReadingMs:J

.field private declination:F

.field private declinationUpdateTimeMs:J

.field private final display:Landroid/view/Display;

.field private gravity:Landroid/hardware/Sensor;

.field private gyroscope:Landroid/hardware/Sensor;

.field private lastAzimuthUpdate:F

.field private lastPitchUpdate:F

.field private lastUpdateTimeMs:J

.field private linearAcceleration:Landroid/hardware/Sensor;

.field private magnetic:Landroid/hardware/Sensor;

.field private magneticData:[F

.field private magnetometerReadingMs:J

.field private final orientationFilter:Lcom/nianticlabs/nia/sensors/AngleFilter;

.field private rotation:Landroid/hardware/Sensor;

.field private rotationData:[F

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

.field private final tmpMatrix1:[F

.field private final tmpMatrix2:[F

.field private final tmpMatrix3:[F

.field private final tmpOrientationAngles:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sput v0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->SINE_OF_45_DEGREES:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeClassPointer"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    const/16 v2, 0x9

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticlabs/nia/contextservice/ContextService;-><init>(Landroid/content/Context;J)V

    .line 47
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpMatrix1:[F

    .line 48
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpMatrix2:[F

    .line 49
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpMatrix3:[F

    .line 50
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpOrientationAngles:[F

    .line 51
    new-instance v1, Lcom/nianticlabs/nia/sensors/AngleFilter;

    invoke-direct {v1, v4}, Lcom/nianticlabs/nia/sensors/AngleFilter;-><init>(Z)V

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->orientationFilter:Lcom/nianticlabs/nia/sensors/AngleFilter;

    .line 53
    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->UNDEFINED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 69
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->accelerometerData:[F

    .line 70
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->magneticData:[F

    .line 71
    const/4 v1, 0x5

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->rotationData:[F

    .line 75
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 76
    .local v0, "mgr":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->display:Landroid/view/Display;

    .line 78
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 79
    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->gravity:Landroid/hardware/Sensor;

    .line 80
    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->gyroscope:Landroid/hardware/Sensor;

    .line 81
    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->accelerometer:Landroid/hardware/Sensor;

    .line 82
    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->magnetic:Landroid/hardware/Sensor;

    .line 83
    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->rotation:Landroid/hardware/Sensor;

    .line 84
    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->linearAcceleration:Landroid/hardware/Sensor;

    .line 85
    return-void
.end method

.method private calcMatrixFromRotationVector([F[F)V
    .locals 15
    .param p1, "reading"    # [F
    .param p2, "matrix"    # [F

    .prologue
    .line 242
    const/4 v13, 0x3

    aget v0, p1, v13

    .line 243
    .local v0, "q0":F
    const/4 v13, 0x0

    aget v1, p1, v13

    .line 244
    .local v1, "q1":F
    const/4 v13, 0x1

    aget v5, p1, v13

    .line 245
    .local v5, "q2":F
    const/4 v13, 0x2

    aget v8, p1, v13

    .line 247
    .local v8, "q3":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v1

    mul-float v10, v13, v1

    .line 248
    .local v10, "sq_q1":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v5

    mul-float v11, v13, v5

    .line 249
    .local v11, "sq_q2":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v8

    mul-float v12, v13, v8

    .line 250
    .local v12, "sq_q3":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v1

    mul-float v3, v13, v5

    .line 251
    .local v3, "q1_q2":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v8

    mul-float v9, v13, v0

    .line 252
    .local v9, "q3_q0":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v1

    mul-float v4, v13, v8

    .line 253
    .local v4, "q1_q3":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v5

    mul-float v6, v13, v0

    .line 254
    .local v6, "q2_q0":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v5

    mul-float v7, v13, v8

    .line 255
    .local v7, "q2_q3":F
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v1

    mul-float v2, v13, v0

    .line 257
    .local v2, "q1_q0":F
    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v11

    sub-float/2addr v14, v12

    aput v14, p2, v13

    .line 258
    const/4 v13, 0x1

    sub-float v14, v3, v9

    aput v14, p2, v13

    .line 259
    const/4 v13, 0x2

    add-float v14, v4, v6

    aput v14, p2, v13

    .line 261
    const/4 v13, 0x3

    add-float v14, v3, v9

    aput v14, p2, v13

    .line 262
    const/4 v13, 0x4

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v10

    sub-float/2addr v14, v12

    aput v14, p2, v13

    .line 263
    const/4 v13, 0x5

    sub-float v14, v7, v2

    aput v14, p2, v13

    .line 265
    const/4 v13, 0x6

    sub-float v14, v4, v6

    aput v14, p2, v13

    .line 266
    const/4 v13, 0x7

    add-float v14, v7, v2

    aput v14, p2, v13

    .line 267
    const/16 v13, 0x8

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v10

    sub-float/2addr v14, v11

    aput v14, p2, v13

    .line 268
    return-void
.end method

.method private computeRotationVectorW([F)F
    .locals 6
    .param p1, "xyz"    # [F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "sumOfSquares":F
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    .line 278
    .local v1, "v":F
    mul-float v4, v1, v1

    add-float/2addr v0, v4

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "v":F
    :cond_0
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 281
    sub-float v2, v5, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private getDeclination()F
    .locals 10

    .prologue
    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 379
    .local v4, "now":J
    iget-wide v2, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->declinationUpdateTimeMs:J

    const-wide/32 v8, 0x927c0

    add-long/2addr v2, v8

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 382
    const/4 v6, 0x0

    .line 383
    .local v6, "location":Landroid/location/Location;
    if-eqz v6, :cond_0

    .line 384
    iput-wide v4, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->declinationUpdateTimeMs:J

    .line 385
    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v1, v2

    .line 386
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v6}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    double-to-float v3, v8

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 387
    .local v0, "field":Landroid/hardware/GeomagneticField;
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v1

    iput v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->declination:F

    .line 390
    .end local v0    # "field":Landroid/hardware/GeomagneticField;
    .end local v6    # "location":Landroid/location/Location;
    :cond_0
    iget v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->declination:F

    return v1
.end method

.method private native nativeCompassUpdate(JF)V
.end method

.method private native nativeSensorUpdate(IJ[F)V
.end method

.method private safeCompassUpdate(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "azimuth"    # F

    .prologue
    .line 397
    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->nativeCompassUpdate(JF)V

    .line 399
    monitor-exit v1

    .line 400
    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private safeSensorUpdate(IJ[F)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "timestamp"    # J
    .param p4, "values"    # [F

    .prologue
    .line 406
    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->nativeSensorUpdate(IJ[F)V

    .line 408
    monitor-exit v1

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startSensorManager()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 118
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->gravity:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->gravity:Landroid/hardware/Sensor;

    .line 124
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->getServiceHandler()Landroid/os/Handler;

    move-result-object v2

    .line 122
    invoke-virtual {v0, p0, v1, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->gyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->gyroscope:Landroid/hardware/Sensor;

    .line 132
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->getServiceHandler()Landroid/os/Handler;

    move-result-object v2

    .line 130
    invoke-virtual {v0, p0, v1, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->accelerometer:Landroid/hardware/Sensor;

    .line 140
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->getServiceHandler()Landroid/os/Handler;

    move-result-object v2

    .line 138
    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->magnetic:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->magnetic:Landroid/hardware/Sensor;

    .line 148
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->getServiceHandler()Landroid/os/Handler;

    move-result-object v2

    .line 146
    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->rotation:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->rotation:Landroid/hardware/Sensor;

    .line 156
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->getServiceHandler()Landroid/os/Handler;

    move-result-object v2

    .line 154
    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->linearAcceleration:Landroid/hardware/Sensor;

    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->linearAcceleration:Landroid/hardware/Sensor;

    .line 164
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->getServiceHandler()Landroid/os/Handler;

    move-result-object v2

    .line 162
    invoke-virtual {v0, p0, v1, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 166
    :cond_5
    sget-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->INITIALIZED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    iput-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 167
    return-void
.end method

.method private stopSensorManager()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 171
    sget-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->STOPPED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    iput-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 172
    return-void
.end method

.method private updateOrientation(J[F)Z
    .locals 15
    .param p1, "now"    # J
    .param p3, "matrix"    # [F

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 313
    iget-object v10, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->display:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 327
    const/4 v6, 0x1

    .line 328
    .local v6, "xAxis":I
    const/4 v7, 0x2

    .line 331
    .local v7, "yAxis":I
    :goto_0
    iget-object v5, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpOrientationAngles:[F

    .line 332
    .local v5, "tmpAngles":[F
    iget-object v10, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpMatrix2:[F

    move-object/from16 v0, p3

    invoke-static {v0, v6, v7, v10}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v10

    if-nez v10, :cond_1

    .line 369
    :cond_0
    :goto_1
    return v8

    .line 315
    .end local v5    # "tmpAngles":[F
    .end local v6    # "xAxis":I
    .end local v7    # "yAxis":I
    :pswitch_0
    const/4 v6, 0x2

    .line 316
    .restart local v6    # "xAxis":I
    const/16 v7, 0x81

    .line 317
    .restart local v7    # "yAxis":I
    goto :goto_0

    .line 319
    .end local v6    # "xAxis":I
    .end local v7    # "yAxis":I
    :pswitch_1
    const/16 v6, 0x82

    .line 320
    .restart local v6    # "xAxis":I
    const/4 v7, 0x1

    .line 321
    .restart local v7    # "yAxis":I
    goto :goto_0

    .line 323
    .end local v6    # "xAxis":I
    .end local v7    # "yAxis":I
    :pswitch_2
    const/16 v6, 0x81

    .line 324
    .restart local v6    # "xAxis":I
    const/16 v7, 0x82

    .line 325
    .restart local v7    # "yAxis":I
    goto :goto_0

    .line 346
    .restart local v5    # "tmpAngles":[F
    :cond_1
    iget-object v10, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpMatrix2:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    sget v11, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->SINE_OF_45_DEGREES:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 347
    iget-object v10, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpMatrix2:[F

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpMatrix3:[F

    invoke-static {v10, v9, v11, v12}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 351
    iget-object v10, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpMatrix3:[F

    invoke-static {v10, v5}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 352
    aget v10, v5, v9

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/high16 v11, 0x42b40000    # 90.0f

    sub-float v4, v10, v11

    .line 357
    .local v4, "pitch":F
    :goto_2
    aget v10, v5, v8

    const v11, 0x3c8efa35

    .line 358
    invoke-direct {p0}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->getDeclination()F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 357
    invoke-static {v10}, Lcom/nianticlabs/nia/sensors/MathUtil;->wrapAngle(F)F

    move-result v3

    .line 359
    .local v3, "newAzimuthRad":F
    iget-object v10, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->orientationFilter:Lcom/nianticlabs/nia/sensors/AngleFilter;

    const v11, 0x42652ee1

    mul-float/2addr v11, v3

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1, v11}, Lcom/nianticlabs/nia/sensors/AngleFilter;->filter(JF)F

    move-result v2

    .line 361
    .local v2, "azimuth":F
    iget v10, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastAzimuthUpdate:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v13

    if-gez v10, :cond_2

    iget v10, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastPitchUpdate:F

    sub-float v10, v4, v10

    .line 362
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v13

    if-ltz v10, :cond_0

    .line 366
    :cond_2
    iput v2, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastAzimuthUpdate:F

    .line 367
    iput v4, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastPitchUpdate:F

    .line 368
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastUpdateTimeMs:J

    move v8, v9

    .line 369
    goto :goto_1

    .line 354
    .end local v2    # "azimuth":F
    .end local v3    # "newAzimuthRad":F
    .end local v4    # "pitch":F
    :cond_3
    iget-object v10, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpMatrix2:[F

    invoke-static {v10, v5}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 355
    aget v10, v5, v9

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v4, v10

    .restart local v4    # "pitch":F
    goto :goto_2

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateOrientationFromRaw(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-wide v2, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastUpdateTimeMs:J

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v1

    .line 293
    :cond_1
    iget-wide v2, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->accelerometerReadingMs:J

    iget-wide v4, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->magnetometerReadingMs:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 296
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpMatrix1:[F

    .line 297
    .local v0, "matrix":[F
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->accelerometerData:[F

    iget-object v4, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->magneticData:[F

    invoke-static {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-direct {p0, p1, p2, v0}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->updateOrientation(J[F)Z

    move-result v1

    goto :goto_0
.end method

.method private updateOrientationFromRotation(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 227
    iget-wide v2, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastUpdateTimeMs:J

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 232
    :goto_0
    return v1

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->tmpMatrix1:[F

    .line 231
    .local v0, "matrix":[F
    iget-object v1, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->rotationData:[F

    invoke-direct {p0, v1, v0}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->calcMatrixFromRotationVector([F[F)V

    .line 232
    invoke-direct {p0, p1, p2, v0}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->updateOrientation(J[F)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 219
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->stopSensorManager()V

    .line 115
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->startSensorManager()V

    .line 107
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 176
    sget-object v3, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->RUNNING:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    iput-object v3, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->status:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    .local v0, "now":J
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    .line 183
    .local v2, "type":I
    sparse-switch v2, :sswitch_data_0

    .line 213
    :cond_0
    :goto_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v3, v0, v1, v4}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->safeSensorUpdate(IJ[F)V

    .line 214
    return-void

    .line 185
    :sswitch_0
    iput-wide v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->accelerometerReadingMs:J

    .line 186
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->accelerometerData:[F

    iget-object v5, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->accelerometerData:[F

    array-length v5, v5

    invoke-static {v3, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    invoke-direct {p0, v0, v1}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->updateOrientationFromRaw(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    iget-wide v4, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastUpdateTimeMs:J

    iget v3, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastAzimuthUpdate:F

    invoke-direct {p0, v4, v5, v3}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->safeCompassUpdate(JF)V

    goto :goto_0

    .line 192
    :sswitch_1
    iput-wide v0, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->magnetometerReadingMs:J

    .line 193
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->magneticData:[F

    iget-object v5, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->magneticData:[F

    array-length v5, v5

    invoke-static {v3, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    invoke-direct {p0, v0, v1}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->updateOrientationFromRaw(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    iget-wide v4, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastUpdateTimeMs:J

    iget v3, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastAzimuthUpdate:F

    invoke-direct {p0, v4, v5, v3}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->safeCompassUpdate(JF)V

    goto :goto_0

    .line 199
    :sswitch_2
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->rotationData:[F

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v5, v5

    iget-object v6, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->rotationData:[F

    array-length v6, v6

    .line 200
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 199
    invoke-static {v3, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    if-ne v3, v8, :cond_1

    .line 202
    iget-object v3, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->rotationData:[F

    iget-object v4, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->rotationData:[F

    invoke-direct {p0, v4}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->computeRotationVectorW([F)F

    move-result v4

    aput v4, v3, v8

    .line 204
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->updateOrientationFromRotation(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    iget-wide v4, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastUpdateTimeMs:J

    iget v3, p0, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->lastAzimuthUpdate:F

    invoke-direct {p0, v4, v5, v3}, Lcom/nianticlabs/nia/sensors/NianticSensorManager;->safeCompassUpdate(JF)V

    goto :goto_0

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method
