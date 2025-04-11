.class public Lcom/android/server/audio/AudioService$9;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 16892
    iput-object p1, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 0

    .line 16970
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearNotification()V
    .locals 0

    .line 16900
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->clearNotification()V

    return-void
.end method

.method public getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 16947
    iget-object v0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPackageManager(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPackageManager(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 16948
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 16947
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 16948
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedDevice()I
    .locals 0

    .line 16926
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getConnectedDevice()I

    move-result p0

    return p0
.end method

.method public getCurrentMediaDevice()I
    .locals 0

    .line 16931
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getObservedDevicesForMedia()I

    move-result p0

    return p0
.end method

.method public getMultiSoundAppFromSetting()Ljava/lang/String;
    .locals 1

    .line 16975
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "multisound_app"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName(I)[Ljava/lang/String;
    .locals 0

    .line 16941
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetPackageName(Lcom/android/server/audio/AudioService;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isInstalledApp(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 16954
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public isLeBroadcasting()Z
    .locals 0

    .line 16985
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmIsLeBroadCasting(Lcom/android/server/audio/AudioService;)Z

    move-result p0

    return p0
.end method

.method public sendBecomingNoisyIntent(I)V
    .locals 0

    .line 16965
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBecomingNoisyIntent(Lcom/android/server/audio/AudioService;I)I

    return-void
.end method

.method public setAppCastingState(ZI)V
    .locals 0

    .line 16980
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaSessionServiceInternal(Lcom/android/server/audio/AudioService;)Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->setAppCastingState(ZI)V

    return-void
.end method

.method public showHeadUpNotification(I)V
    .locals 1

    .line 16905
    iget-object v0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    .line 16906
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    move-result p0

    .line 16905
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showHeadUpNotification(II)V

    return-void
.end method

.method public showNotification()V
    .locals 0

    .line 16895
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showNotification()V

    return-void
.end method

.method public updateFocusRequester(I)V
    .locals 0

    .line 16916
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    return-void
.end method

.method public updateFocusRequester(IZ)V
    .locals 0

    .line 16921
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(IZ)V

    return-void
.end method

.method public updateForegroundUid(I)V
    .locals 0

    .line 16911
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmForegroundUid(Lcom/android/server/audio/AudioService;I)V

    return-void
.end method
