.class public final Lcom/android/server/usb/UsbAlsaDevice;
.super Ljava/lang/Object;
.source "UsbAlsaDevice.java"


# static fields
.field public static final DIRECTION_STR:[Ljava/lang/String;


# instance fields
.field public final mAlsaCardDeviceString:Ljava/lang/String;

.field public mAudioService:Landroid/media/IAudioService;

.field public final mCardNum:I

.field public final mDeviceAddress:Ljava/lang/String;

.field public mDeviceDescription:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public final mDeviceNum:I

.field public final mDeviceType:[I

.field public final mHasDevice:[Z

.field public mHasJackDetect:Z

.field public final mIsDock:Z

.field public final mIsHeadset:[Z

.field public mIsSelected:[Z

.field public mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

.field public mState:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "INPUT"

    const-string v1, "OUTPUT"

    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZZ)V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Z

    .line 54
    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    new-array v2, v0, [Z

    .line 56
    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    new-array v3, v0, [I

    .line 58
    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    new-array v3, v0, [Z

    .line 59
    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    new-array v0, v0, [I

    .line 60
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z

    .line 72
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    .line 73
    iput p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 74
    iput p3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    .line 75
    iput-object p4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    aput-boolean p5, v1, v0

    const/4 p1, 0x0

    aput-boolean p6, v1, p1

    aput-boolean p7, v2, p1

    aput-boolean p8, v2, v0

    .line 80
    iput-boolean p9, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->initDeviceType()V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 3

    monitor-enter p0

    .line 394
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    const-string p4, "card"

    .line 396
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string p4, "device"

    .line 397
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string/jumbo p4, "name"

    .line 398
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string p4, "has_output"

    .line 399
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const-wide v1, 0x10800000004L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string p4, "has_input"

    .line 400
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string p4, "address"

    .line 401
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    const-wide v1, 0x10900000006L

    invoke-virtual {p1, p4, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 403
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 425
    instance-of v0, p1, Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 428
    :cond_0
    check-cast p1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 429
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    iget v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    iget v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    iget-object v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    .line 431
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    iget-object v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    .line 432
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    iget-boolean p1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlsaCardDeviceString()Ljava/lang/String;
    .locals 2

    .line 110
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-gez v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->makeAlsaAddressString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alsa card or device alsaCard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alsaDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsbAlsaDevice"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCardNum()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    return p0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getInputDeviceType()I
    .locals 1

    .line 281
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getOutputDeviceType()I
    .locals 1

    .line 272
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public hashCode()I
    .locals 5

    .line 443
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 444
    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 445
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v3, 0x1

    aget-boolean v4, v2, v3

    xor-int/2addr v4, v3

    add-int/2addr v0, v4

    mul-int/2addr v0, v1

    const/4 v4, 0x0

    .line 446
    aget-boolean v2, v2, v4

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 447
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    aget-boolean v4, v2, v4

    xor-int/2addr v4, v3

    add-int/2addr v0, v4

    mul-int/2addr v0, v1

    .line 448
    aget-boolean v2, v2, v3

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 449
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    xor-int/2addr p0, v3

    add-int/2addr v0, p0

    return v0
.end method

.method public final initDeviceType()V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    const/high16 v3, -0x7e000000

    goto :goto_0

    :cond_0
    const v3, -0x7ffff000

    goto :goto_0

    :cond_1
    move v3, v2

    .line 258
    :goto_0
    aput v3, v0, v2

    const/4 v3, 0x1

    .line 259
    aget-boolean v1, v1, v3

    if-eqz v1, :cond_4

    .line 260
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    if-eqz v1, :cond_2

    const/16 v2, 0x1000

    goto :goto_1

    .line 261
    :cond_2
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_3

    const/high16 v2, 0x4000000

    goto :goto_1

    :cond_3
    const/16 v2, 0x4000

    .line 263
    :cond_4
    :goto_1
    aput v2, v0, v3

    return-void
.end method

.method public final declared-synchronized isInputJackConnected()Z
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 158
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 160
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isInputJackConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isOutputJackConnected()Z
    .locals 1

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 168
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 170
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isOutputJackConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 416
    :try_start_0
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 417
    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startOutput()V

    .line 199
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final startDevice(I)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 216
    aput-boolean v1, v0, p1

    .line 217
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    const/4 v2, 0x0

    aput v2, v0, p1

    .line 218
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startJackDetect()V

    .line 219
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z

    return-void
.end method

.method public declared-synchronized startInput()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 204
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startJackDetect()V
    .locals 1

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 176
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 179
    monitor-exit p0

    return-void

    .line 182
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/android/server/usb/UsbAlsaJackDetector;->startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startOutput()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 209
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopOutput()V

    .line 225
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopInput()V
    .locals 3

    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 231
    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 233
    :try_start_1
    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopJackDetect()V

    .line 237
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaDevice;->updateInputWiredDeviceConnectionState(Z)Z

    .line 238
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aput-boolean v1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopJackDetect()V
    .locals 1

    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->pleaseStop()V

    :cond_0
    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopOutput()V
    .locals 3

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    const/4 v1, 0x1

    aget-boolean v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 244
    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 246
    :try_start_1
    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopJackDetect()V

    .line 250
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbAlsaDevice;->updateOutputWiredDeviceConnectionState(Z)Z

    .line 251
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aput-boolean v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toShortString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 408
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[card:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 383
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbAlsaDevice: [card: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasOutput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasInput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateInputWiredDeviceConnectionState(Z)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 364
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateOutputWiredDeviceConnectionState(Z)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 375
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updateWiredDeviceConnectionState(IZ)Z
    .locals 7

    .line 285
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x0

    const-string v2, "UsbAlsaDevice"

    if-nez v0, :cond_0

    const-string p0, "Updating wired device connection state on unselected device"

    .line 286
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    .line 290
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to set device connection state as "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " device type is none"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to update "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " device connection state failed as alsa card device string is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 301
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pre-call device:0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    aget v3, v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " addr:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    .line 305
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isInputJackConnected()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isOutputJackConnected()Z

    move-result v0

    .line 306
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " JACK connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    move p2, v3

    goto :goto_1

    :cond_4
    move p2, v1

    .line 308
    :goto_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    aget v4, v0, p1

    if-eq p2, v4, :cond_5

    .line 309
    aput p2, v0, p1

    .line 310
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget-object v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    aget v4, v4, p1

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 313
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p0, v0, p2, v2}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 315
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException in setWiredDeviceConnectionState for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    :goto_2
    return v3
.end method

.method public declared-synchronized updateWiredDeviceConnectionStateByBundle(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "UsbAlsaDevice"

    const-string/jumbo v1, "updateWiredDeviceConnectionStateByBundle()"

    .line 326
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "UsbAlsaDevice"

    const-string/jumbo v0, "no alsaCardDeviceString"

    .line 330
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 335
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const-string v1, "UsbAlsaDevice"

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INPUT addr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 338
    :goto_0
    new-instance v4, Landroid/media/AudioDeviceAttributes;

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const/high16 v6, -0x7e000000

    invoke-direct {v4, v6, v0, v5}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v6, "UsbAlsaDevice"

    invoke-interface {v5, v4, v1, v6}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 343
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_4

    const-string v1, "UsbAlsaDevice"

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OUTPUT addr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    move v2, v3

    .line 346
    :cond_3
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const/high16 v3, 0x4000000

    invoke-direct {p1, v3, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v1, "UsbAlsaDevice"

    invoke-interface {v0, p1, v2, v1}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p1, "UsbAlsaDevice"

    const-string v0, "RemoteException in updateWiredDeviceConnectionStateByBundle"

    .line 351
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
