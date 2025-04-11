.class public Lcom/android/server/audio/AudioService$SamsungSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 3

    .line 15609
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 15610
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 15613
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "multi_audio_focus_enabled"

    .line 15614
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 15613
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 15620
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 15623
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "multi_audio_focus_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 15625
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService;->setMultiAudioFocusEnabled(Z)V

    .line 15627
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    if-eqz p1, :cond_2

    .line 15629
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/server/audio/utils/PlatformTypeUtils;->getPlatformType(Landroid/content/Context;)I

    move-result p1

    .line 15630
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPlatformType(Lcom/android/server/audio/AudioService;)I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 15631
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmPlatformType(Lcom/android/server/audio/AudioService;I)V

    .line 15632
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPlatformType(Lcom/android/server/audio/AudioService;)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 15633
    sput-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    .line 15635
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungSettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    const-string p1, "AS.AudioService.CMC"

    invoke-static {p0, v1, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateStreamVolumeAlias(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    :cond_2
    return-void
.end method
