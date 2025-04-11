.class public final Lcom/android/server/hdmi/HotplugDetectionAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "HotplugDetectionAction.java"


# instance fields
.field public mAvrStatusCount:I

.field public final mIsTvDevice:Z

.field public mTimeoutCount:I


# direct methods
.method public static bridge synthetic -$$Nest$mcheckHotplug(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->checkHotplug(Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 59
    iput p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 61
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    return-void
.end method

.method public static addressListToBitSet(Ljava/util/List;)Ljava/util/BitSet;
    .locals 2

    .line 212
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 213
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 214
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 0

    .line 222
    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/BitSet;

    .line 223
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    return-object p0
.end method

.method public static infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;
    .locals 7

    .line 198
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 199
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 201
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v3

    :goto_2
    if-eqz p2, :cond_3

    .line 203
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v5

    const v6, 0xffff

    if-eq v5, v6, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public final addDevice(I)V
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public final checkHotplug(Ljava/util/List;Z)V
    .locals 9

    .line 159
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v0

    .line 160
    invoke-static {v0, p2, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;

    move-result-object v2

    .line 161
    invoke-static {p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addressListToBitSet(Ljava/util/List;)Ljava/util/BitSet;

    move-result-object p1

    .line 164
    invoke-static {v2, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v2

    const/4 v3, -0x1

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 166
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    const/4 v6, 0x5

    const-string v7, "HotPlugDetectionAction"

    if-eq v4, v3, :cond_1

    .line 167
    iget-boolean v8, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz v8, :cond_0

    if-ne v4, v6, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v8

    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnected(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    iget v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ack not returned from AVR. count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v5, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove device by hot-plug detection:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeDevice(I)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    iput v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 187
    :cond_2
    invoke-static {v0, p2, v5}, Lcom/android/server/hdmi/HotplugDetectionAction;->infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;

    move-result-object p2

    .line 188
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object p1

    move p2, v3

    :goto_1
    add-int/2addr p2, v5

    .line 190
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p2

    if-eq p2, v3, :cond_3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add device by hot-plug detection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->addDevice(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final getPollingInterval()I
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x1388

    goto :goto_0

    :cond_0
    const p0, 0xea60

    :goto_0
    return p0
.end method

.method public handleTimerEvent(I)V
    .locals 1

    .line 98
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_4

    .line 103
    iget-boolean v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz v0, :cond_3

    .line 104
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAudioSystem()V

    .line 110
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x1388

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    .line 114
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const v0, 0xea60

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    :cond_4
    return-void
.end method

.method public final mayCancelDeviceSelect(I)V
    .locals 3

    .line 251
    const-class v0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 252
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    .line 253
    invoke-virtual {v2}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->getTargetAddress()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->removeAction(Ljava/lang/Class;)V

    goto :goto_0

    .line 258
    :cond_1
    const-class v1, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 260
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    .line 261
    invoke-virtual {v2}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->getTargetAddress()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->removeAction(Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final mayCancelOneTouchRecord(I)V
    .locals 3

    .line 268
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 270
    invoke-virtual {v1}, Lcom/android/server/hdmi/OneTouchRecordAction;->getRecorderAddress()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final mayChangeRoutingPath(I)V
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleRemoveActiveRoutingPath(I)V

    :cond_0
    return-void
.end method

.method public final mayDisableSystemAudioAndARC(I)V
    .locals 2

    const/4 v0, 0x5

    .line 277
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel(Z)V

    .line 284
    new-instance v0, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_1
    return-void
.end method

.method public final pollAllDevices()V
    .locals 3

    const-string v0, "HotPlugDetectionAction"

    const-string v1, "Poll all devices."

    .line 134
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HotplugDetectionAction$1;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V

    const v1, 0x10001

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    return-void
.end method

.method public pollAllDevicesNow()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    const/4 v0, 0x1

    .line 127
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    .line 130
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getPollingInterval()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final pollAudioSystem()V
    .locals 3

    const-string v0, "HotPlugDetectionAction"

    const-string v1, "Poll audio system."

    .line 146
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HotplugDetectionAction$2;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V

    const v1, 0x10002

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeDevice(I)V
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayChangeRoutingPath(I)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayCancelOneTouchRecord(I)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayDisableSystemAudioAndARC(I)V

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayCancelDeviceSelect(I)V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecDevice(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    return-void
.end method

.method public start()Z
    .locals 2

    const-string v0, "HotPlugDetectionAction"

    const-string v1, "Hot-plug detection started."

    .line 78
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x0

    .line 81
    iput v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getPollingInterval()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v0
.end method
