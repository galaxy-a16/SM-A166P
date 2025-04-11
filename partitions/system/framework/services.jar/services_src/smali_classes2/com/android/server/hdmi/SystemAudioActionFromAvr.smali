.class public final Lcom/android/server/hdmi/SystemAudioActionFromAvr;
.super Lcom/android/server/hdmi/SystemAudioAction;
.source "SystemAudioActionFromAvr.java"


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/SystemAudioAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    return-void
.end method


# virtual methods
.method public final handleSystemAudioActionFromAvr()V
    .locals 5

    .line 51
    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    const/16 v3, 0x72

    const/4 v4, 0x4

    .line 56
    invoke-static {v0, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 59
    iput-boolean v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequest()V

    return-void

    .line 64
    :cond_1
    const-class v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->removeAction(Ljava/lang/Class;)V

    .line 66
    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :goto_0
    return-void
.end method

.method public start()Z
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->removeSystemAudioActionInProgress()V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->handleSystemAudioActionFromAvr()V

    const/4 p0, 0x1

    return p0
.end method
