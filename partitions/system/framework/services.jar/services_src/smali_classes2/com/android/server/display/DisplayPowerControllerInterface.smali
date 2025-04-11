.class public interface abstract Lcom/android/server/display/DisplayPowerControllerInterface;
.super Ljava/lang/Object;
.source "DisplayPowerControllerInterface.java"


# virtual methods
.method public abstract addBrightnessWeights(FFFF)V
.end method

.method public abstract addDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerControllerInterface;)V
.end method

.method public abstract clearAdaptiveBrightnessLongtermModelBuilder()V
.end method

.method public abstract convertToBrightness(F)I
.end method

.method public abstract doShortTermReset()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAdaptiveBrightness(F)F
.end method

.method public abstract getAmbientBrightnessInfo(F)Ljava/lang/String;
.end method

.method public abstract getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getAppliedBackupConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
.end method

.method public abstract getBrightnessLearningMaxLimitCount()[I
.end method

.method public abstract getCurrentScreenBrightness()F
.end method

.method public abstract getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getDisplayId()I
.end method

.method public abstract getLastAutomaticScreenBrightness()F
.end method

.method public abstract getLastUserSetScreenBrightnessTime()J
.end method

.method public abstract getLeadDisplayId()I
.end method

.method public abstract getScreenBrightnessSetting()F
.end method

.method public abstract ignoreProximitySensorUntilChanged()V
.end method

.method public abstract injectLux(Landroid/hardware/SensorEvent;)V
.end method

.method public abstract isProximitySensorAvailable()Z
.end method

.method public abstract onBootCompleted()V
.end method

.method public abstract onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;I)V
.end method

.method public abstract onScreenBrightnessSettingTimeChanged()V
.end method

.method public abstract onSwitchUser(I)V
.end method

.method public abstract persistBrightnessTrackerState()V
.end method

.method public abstract removeDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerControllerInterface;)V
.end method

.method public abstract requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
.end method

.method public abstract restartAdaptiveBrightnessLongtermModelBuilderFromBnr()V
.end method

.method public abstract setActualDisplayState(I)V
.end method

.method public abstract setAmbientColorTemperatureOverride(F)V
.end method

.method public abstract setAutoBrightnessLoggingEnabled(Z)V
.end method

.method public abstract setAutomaticScreenBrightnessMode(Z)V
.end method

.method public abstract setBrightness(F)V
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
.end method

.method public abstract setBrightnessToFollow(FFF)V
.end method

.method public abstract setDisplayWhiteBalanceLoggingEnabled(Z)V
.end method

.method public abstract setHdrRampRate(FF)V
.end method

.method public abstract setRampSpeedToFollower(FF)V
.end method

.method public abstract setTemporaryAutoBrightnessAdjustment(F)V
.end method

.method public abstract setTemporaryBrightness(F)V
.end method

.method public abstract setTemporaryBrightnessForSlowChange(FZ)V
.end method

.method public abstract setTestModeEnabled(Z)V
.end method

.method public abstract stop()V
.end method
