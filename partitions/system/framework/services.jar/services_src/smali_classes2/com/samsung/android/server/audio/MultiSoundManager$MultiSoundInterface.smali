.class public interface abstract Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"


# virtual methods
.method public abstract checkAudioSettingsPermission(Ljava/lang/String;)Z
.end method

.method public abstract clearNotification()V
.end method

.method public abstract getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getConnectedDevice()I
.end method

.method public abstract getCurrentMediaDevice()I
.end method

.method public abstract getMultiSoundAppFromSetting()Ljava/lang/String;
.end method

.method public abstract getPackageName(I)[Ljava/lang/String;
.end method

.method public abstract isInstalledApp(Ljava/lang/String;)Z
.end method

.method public abstract isLeBroadcasting()Z
.end method

.method public abstract sendBecomingNoisyIntent(I)V
.end method

.method public abstract setAppCastingState(ZI)V
.end method

.method public abstract showHeadUpNotification(I)V
.end method

.method public abstract showNotification()V
.end method

.method public abstract updateFocusRequester(I)V
.end method

.method public abstract updateFocusRequester(IZ)V
.end method

.method public abstract updateForegroundUid(I)V
.end method
