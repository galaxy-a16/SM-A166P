.class public final Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "AbsoluteVolumeAudioStatusAction.java"


# instance fields
.field public mInitialAudioStatusRetriesLeft:I

.field public mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

.field public final mTargetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 p1, 0x2

    .line 33
    iput p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    .line 44
    iput p2, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    return-void
.end method


# virtual methods
.method public final handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

    .line 74
    iget v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 79
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    return v2

    .line 87
    :cond_1
    new-instance v1, Lcom/android/server/hdmi/AudioStatus;

    invoke-direct {v1, p1, v0}, Lcom/android/server/hdmi/AudioStatus;-><init>(IZ)V

    .line 88
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v0, 0x2

    if-ne p1, v2, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->enableAbsoluteVolumeBehavior(Lcom/android/server/hdmi/AudioStatus;)V

    .line 90
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_4

    .line 92
    invoke-virtual {v1}, Lcom/android/server/hdmi/AudioStatus;->getVolume()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    invoke-virtual {v0}, Lcom/android/server/hdmi/AudioStatus;->getVolume()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/server/hdmi/AudioStatus;->getVolume()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvbVolumeChange(I)V

    .line 95
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    invoke-virtual {v0}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v0

    if-eq p1, v0, :cond_4

    .line 96
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvbMuteChange(Z)V

    .line 99
    :cond_4
    :goto_0
    iput-object v1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    return v2

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public handleTimerEvent(I)V
    .locals 1

    .line 106
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    return-void

    .line 108
    :cond_0
    iget p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 109
    iput p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    .line 110
    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    :cond_1
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2

    .line 65
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    return p0
.end method

.method public final sendGiveAudioStatus()V
    .locals 2

    .line 59
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public start()Z
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 50
    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    return v0
.end method

.method public updateVolume(I)V
    .locals 2

    .line 55
    new-instance v0, Lcom/android/server/hdmi/AudioStatus;

    iget-object v1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    invoke-virtual {v1}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/hdmi/AudioStatus;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    return-void
.end method
