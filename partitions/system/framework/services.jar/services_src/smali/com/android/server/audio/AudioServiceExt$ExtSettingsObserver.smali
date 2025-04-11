.class public Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioServiceExt.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioServiceExt;)V
    .locals 4

    .line 364
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 365
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 367
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "theme_touch_sound"

    .line 369
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 368
    invoke-virtual {v0, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 371
    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "system_sound"

    .line 372
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 371
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 380
    :cond_0
    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hearing_musiccheck"

    .line 381
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 380
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 383
    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "k2hd_effect"

    .line 384
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 383
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 387
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v0, :cond_1

    .line 388
    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isBikeMode"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 391
    :cond_1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v0, :cond_2

    .line 392
    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headphone_monitoring"

    .line 393
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 396
    :cond_2
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v0, :cond_3

    .line 397
    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "volume_monitor"

    .line 398
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 397
    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 404
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 406
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/audio/AudioServiceExt;->updateThemeSound(IZ)V

    .line 417
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "hearing_musiccheck"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 419
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {v1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "k2hd_effect"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 421
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {v2}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmAdaptSoundEnabled(Lcom/android/server/audio/AudioServiceExt;)I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fputmAdaptSoundEnabled(Lcom/android/server/audio/AudioServiceExt;I)V

    .line 423
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmContext(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {v1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmAdaptSoundEnabled(Lcom/android/server/audio/AudioServiceExt;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setAdaptSound(Landroid/content/Context;I)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmUpscalerEnabled(Lcom/android/server/audio/AudioServiceExt;)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 425
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1, v1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fputmUpscalerEnabled(Lcom/android/server/audio/AudioServiceExt;I)V

    .line 426
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmUpscalerEnabled(Lcom/android/server/audio/AudioServiceExt;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    .line 429
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 430
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmContext(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isBikeMode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-static {p1, v2}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fputmIsBikeMode(Lcom/android/server/audio/AudioServiceExt;Z)V

    .line 433
    :cond_4
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz p1, :cond_5

    .line 434
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "headphone_monitoring"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    .line 436
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmService(Lcom/android/server/audio/AudioServiceExt;)Lcom/android/server/audio/AudioService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getRecordMonitor()Lcom/android/server/audio/RecordingActivityMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/RecordingActivityMonitor;->isOnlyKaraokeRecordingActive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 437
    sget p1, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    invoke-static {p1}, Lcom/samsung/android/server/audio/utils/KaraokeUtils;->setKaraokeListenback(I)V

    .line 440
    :cond_5
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz p1, :cond_7

    .line 441
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmCr(Lcom/android/server/audio/AudioServiceExt;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "volume_monitor"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 443
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {v2}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fgetmVolumeMonitorValue(Lcom/android/server/audio/AudioServiceExt;)I

    move-result v2

    if-eq v2, p1, :cond_7

    .line 444
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$fputmVolumeMonitorValue(Lcom/android/server/audio/AudioServiceExt;I)V

    .line 445
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioServiceExt;->getVolumeMonitorService()Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v2

    if-ne p1, v1, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setVolumeMonitorOnOff(Z)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 447
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->getVolumeMonitorService()Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetByDataClear()V

    :cond_7
    return-void
.end method
