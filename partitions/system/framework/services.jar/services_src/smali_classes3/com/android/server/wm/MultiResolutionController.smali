.class public Lcom/android/server/wm/MultiResolutionController;
.super Ljava/lang/Object;
.source "MultiResolutionController.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisplaySizeDensityChangedReason:Ljava/lang/String;

.field public mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpDisplaySize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 64
    iput-object p2, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkMultiResolutionChangePermission(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    .locals 2

    .line 278
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 282
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 283
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input illegalArgument(displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearForcedDisplaySizeDensity(I)V
    .locals 12

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/server/wm/MultiResolutionController;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/MultiResolutionController;->getForcedDisplaySize(Landroid/graphics/Point;)V

    .line 132
    iget-object v3, p0, Lcom/android/server/wm/MultiResolutionController;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 133
    iget v6, v3, Landroid/graphics/Point;->y:I

    .line 134
    invoke-virtual {p0}, Lcom/android/server/wm/MultiResolutionController;->getForcedDisplayDensity()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 149
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/DisplayContent;->setForcedSizeDensity(IIIZZI)V

    .line 158
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    move v5, p1

    .line 161
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wm/MultiResolutionController;->updateDisplaySizeDensityChangedReason(IIIIIZLjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v3

    .line 158
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    .line 160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move v4, p1

    .line 161
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/MultiResolutionController;->updateDisplaySizeDensityChangedReason(IIIIIZLjava/lang/String;)V

    .line 164
    throw v2

    .line 112
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input illegalArgument(displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mDisplaySizeDensityChangedReason: "

    .line 298
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    return-void
.end method

.method public getDisplaySizeDensityChangedReason()Ljava/lang/String;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    return-object p0
.end method

.method public getForcedDisplayDensity()I
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_density_forced"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_0

    .line 96
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "MultiResolutionController"

    const-string v3, "NumberFormatException"

    .line 98
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 102
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getForcedDisplaySize(Landroid/graphics/Point;)V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2c

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 76
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Point;->set(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "MultiResolutionController"

    const-string v3, "NumberFormatException"

    .line 81
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 86
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Point;->set(II)V

    .line 87
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getValidValue(II)I
    .locals 0

    .line 0
    if-gez p1, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method public setForcedDisplaySizeDensity(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    .locals 9

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiResolutionController;->checkMultiResolutionChangePermission(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V

    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getWidth()I

    move-result v3

    .line 171
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getHeight()I

    move-result v4

    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDensity()I

    move-result v5

    .line 173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 175
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiResolutionController;->setForcedDisplaySizeDensityInner(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    move-result v1

    const/4 v2, -0x1

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    move-result v6

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getCallerInfo()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    .line 178
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/MultiResolutionController;->updateDisplaySizeDensityChangedReason(IIIIIZLjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v8

    .line 177
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    move-result v1

    const/4 v2, -0x1

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    move-result v6

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getCallerInfo()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    .line 178
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/MultiResolutionController;->updateDisplaySizeDensityChangedReason(IIIIIZLjava/lang/String;)V

    .line 181
    throw v8
.end method

.method public setForcedDisplaySizeDensityInner(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    .locals 10

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getWidth()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getHeight()I

    move-result v1

    if-ltz v1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v4

    .line 190
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDensity()I

    move-result v1

    if-ltz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v4

    .line 191
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getWidth()I

    move-result v1

    iget v2, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/MultiResolutionController;->getValidValue(II)I

    move-result v4

    .line 192
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getHeight()I

    move-result v1

    iget v2, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/MultiResolutionController;->getValidValue(II)I

    move-result v5

    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDensity()I

    move-result v1

    iget v2, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/MultiResolutionController;->getValidValue(II)I

    move-result v6

    .line 218
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getForcedHideCutout()I

    move-result v9

    .line 216
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/DisplayContent;->setForcedSizeDensity(IIIZZI)V

    .line 231
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/android/server/wm/MultiResolutionController;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    .line 291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;)V

    return-void
.end method

.method public updateDisplaySizeDensityChangedReason(IIIIIZLjava/lang/String;)V
    .locals 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "Pid="

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ProcessName="

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const-string v2, ", UserId="

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    if-eq p3, v1, :cond_1

    if-eq p4, v1, :cond_1

    const-string p2, ", Size="

    .line 256
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "x"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    if-eq p5, v1, :cond_2

    const-string p2, ", Density="

    .line 259
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p6, :cond_3

    const-string p2, ", saveToSettings=true"

    .line 262
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p7, :cond_4

    const-string p2, ", info="

    .line 265
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p2, ", caller="

    .line 268
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x5

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_5

    .line 272
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiResolutionController;->updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V

    .line 274
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateDisplaySizeDensityChangedReason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiResolutionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
