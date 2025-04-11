.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
.super Landroid/media/metrics/IMediaMetricsManager$Stub;
.source "MediaMetricsManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-direct {p0}, Landroid/media/metrics/IMediaMetricsManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    return-void
.end method


# virtual methods
.method public getBundleSessionId(I)Ljava/lang/String;
    .locals 0

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEditingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackSessionId(I)Ljava/lang/String;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecordingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionIdInternal(I)Ljava/lang/String;
    .locals 2

    const/16 p1, 0xc

    new-array p1, p1, [B

    .line 240
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmSecureRandom(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 p0, 0xb

    .line 241
    invoke-static {p1, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 245
    new-instance p1, Landroid/media/MediaMetrics$Item;

    const-string/jumbo v0, "metrics.manager"

    invoke-direct {p1, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v1, "create"

    .line 246
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object v0, Landroid/media/MediaMetrics$Property;->LOG_SESSION_ID:Landroid/media/MediaMetrics$Key;

    .line 247
    invoke-virtual {p1, v0, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Landroid/media/MediaMetrics$Item;->record()Z

    return-object p0
.end method

.method public getTranscodingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final inList([Ljava/lang/String;Ljava/util/List;)Z
    .locals 5

    .line 471
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    .line 472
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 473
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final listNameToLoggingLevel(Ljava/lang/String;)I
    .locals 2

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo p0, "player_metrics_per_app_attribution_allowlist"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo p0, "player_metrics_app_allowlist"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo p0, "player_metrics_per_app_attribution_blocklist"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const p0, 0x1869f

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    const/16 p0, 0x3e8

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70e7b2af -> :sswitch_2
        -0x4cdbea91 -> :sswitch_1
        0x71446e0d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final loggingLevel()I
    .locals 8

    .line 350
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 351
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 353
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 356
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v6, "media"

    const-string/jumbo v7, "media_metrics_mode"

    invoke-static {v6, v7, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 362
    throw p0

    .line 365
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 366
    monitor-exit v0

    return v5

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v4, 0x1869f

    if-nez v2, :cond_2

    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: MEDIA_METRICS_MODE_OFF"

    .line 369
    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    monitor-exit v0

    return v4

    .line 373
    :cond_2
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 374
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 375
    array-length v6, v2

    if-nez v6, :cond_3

    goto/16 :goto_1

    .line 385
    :cond_3
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 386
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    .line 387
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_app_blocklist"

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 388
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_APP_BLOCKLIST."

    .line 390
    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    monitor-exit v0

    return v4

    .line 395
    :cond_4
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_app_blocklist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 398
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 400
    :cond_5
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    .line 401
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_per_app_attribution_blocklist"

    .line 402
    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 403
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_BLOCKLIST."

    .line 405
    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    monitor-exit v0

    return v4

    .line 410
    :cond_6
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_per_app_attribution_blocklist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 415
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 418
    :cond_7
    monitor-exit v0

    return v5

    .line 420
    :cond_8
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_d

    .line 421
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    .line 422
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_per_app_attribution_allowlist"

    .line 423
    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 424
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_ALLOWLIST."

    .line 426
    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    monitor-exit v0

    return v4

    .line 431
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_per_app_attribution_allowlist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 436
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 438
    :cond_a
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    .line 439
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_app_allowlist"

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 440
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_APP_ALLOWLIST."

    .line 442
    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    monitor-exit v0

    return v4

    .line 447
    :cond_b
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_app_allowlist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 450
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_c
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Not detected in any allowlist."

    .line 453
    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    monitor-exit v0

    return v4

    .line 456
    :cond_d
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string p0, "MediaMetricsManagerService"

    const-string v0, "Logging level blocked: Blocked by default."

    .line 458
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_e
    :goto_1
    :try_start_3
    const-string v2, "MediaMetricsManagerService"

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty package from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_f

    const/16 v4, 0x3e8

    .line 383
    :cond_f
    monitor-exit v0

    return v4

    :catchall_1
    move-exception p0

    .line 456
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 464
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->inList([Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 465
    invoke-virtual {p0, p3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->listNameToLoggingLevel(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public releaseSessionId(Ljava/lang/String;I)V
    .locals 1

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Releasing sessionId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for userId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " [NOP]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMetricsManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V
    .locals 4

    .line 186
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p1, 0x1869f

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const-string p0, "bundlesession-statsd-atom"

    .line 191
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x142

    if-eq p0, p1, :cond_1

    return-void

    :cond_1
    const-string/jumbo p0, "playbackstateevent-sessionid"

    .line 200
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p3, "playbackstateevent-state"

    const/4 v0, -0x1

    .line 201
    invoke-virtual {p2, p3, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const-string/jumbo v0, "playbackstateevent-lifetime"

    const-wide/16 v1, -0x1

    .line 202
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    if-eqz p0, :cond_3

    if-ltz p3, :cond_3

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_2

    goto :goto_0

    .line 209
    :cond_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p2

    .line 210
    invoke-virtual {p2, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 211
    invoke-virtual {p1, p0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 212
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 213
    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 216
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void

    .line 204
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dropping incomplete data for atom 322: _sessionId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " _state: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " _lifetime: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMetricsManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    .locals 0

    .line 305
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x141

    .line 310
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 311
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 312
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getNetworkType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 313
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 316
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    .locals 0

    .line 287
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x143

    .line 292
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 293
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 294
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getExceptionStack()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 295
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 296
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getSubErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 297
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 298
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 300
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p3

    const/16 v0, 0x140

    .line 160
    invoke-virtual {p3, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    invoke-virtual {p3, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 163
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getMediaDurationMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 164
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamSource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 165
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 166
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlaybackType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 167
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 168
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getContentType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 169
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 170
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    new-array p1, v0, [B

    .line 171
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 172
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesPlayed()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 173
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesDropped()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 174
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getAudioUnderrunCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 175
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkBytesRead()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 176
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getLocalBytesRead()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 177
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkTransferDurationMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 179
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmSessionId()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 182
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    .locals 0

    .line 224
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x142

    .line 229
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 230
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 231
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 232
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 234
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 235
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x144

    .line 327
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 328
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 329
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackState()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 330
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackChangeReason()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 331
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getContainerMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 332
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getSampleMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 333
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getCodecName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 334
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getBitrate()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 335
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 336
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 337
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 338
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguageRegion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 339
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getChannelCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 340
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getAudioSampleRate()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 341
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 342
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 343
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getVideoFrameRate()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 345
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 346
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
