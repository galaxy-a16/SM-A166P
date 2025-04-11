.class public Lcom/android/server/wm/BackgroundActivityStartController;
.super Ljava/lang/Object;
.source "BackgroundActivityStartController.java"


# instance fields
.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 154
    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-void
.end method

.method public static balCodeToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "BAL_ALLOW_SDK_SANDBOX"

    return-object p0

    :pswitch_1
    const-string p0, "BAL_ALLOW_FOREGROUND"

    return-object p0

    :pswitch_2
    const-string p0, "BAL_ALLOW_GRACE_PERIOD"

    return-object p0

    :pswitch_3
    const-string p0, "BAL_ALLOW_SAW_PERMISSION"

    return-object p0

    :pswitch_4
    const-string p0, "BAL_ALLOW_PERMISSION"

    return-object p0

    :pswitch_5
    const-string p0, "BAL_ALLOW_PENDING_INTENT"

    return-object p0

    :pswitch_6
    const-string p0, "BAL_ALLOW_VISIBLE_WINDOW"

    return-object p0

    :pswitch_7
    const-string p0, "BAL_ALLOW_ALLOWLISTED_COMPONENT"

    return-object p0

    :pswitch_8
    const-string p0, "BAL_ALLOW_ALLOWLISTED_UID"

    return-object p0

    :pswitch_9
    const-string p0, "BAL_ALLOW_DEFAULT"

    return-object p0

    :pswitch_a
    const-string p0, "BAL_BLOCK"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSystemExemptFlagEnabled()Z
    .locals 3

    const-string/jumbo v0, "system_exempt_from_activity_bg_start_restriction_enabled"

    const/4 v1, 0x1

    const-string/jumbo v2, "window_manager"

    .line 628
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static logStartAllowedAndReturnCode(IILandroid/app/BackgroundStartPrivileges;ZIILandroid/content/Intent;Ljava/lang/String;)I
    .locals 7

    if-eqz p1, :cond_0

    .line 598
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result p2

    if-eqz p2, :cond_0

    return p1

    :cond_0
    const-string v6, "Activity start allowed"

    move v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 602
    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static logStartAllowedAndReturnCode(IZIILandroid/content/Intent;ILjava/lang/String;)I
    .locals 6

    const-string v5, ""

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 580
    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;)I
    .locals 7

    const-string v6, "Activity start allowed"

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 586
    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 609
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLogBalAllowed(IIILandroid/content/Intent;)V

    return p0
.end method

.method public static statsLogBalAllowed(IIILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x5

    const-string v1, ""

    const/16 v2, 0x278

    if-ne p0, v0, :cond_2

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    .line 639
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v1

    .line 640
    :goto_0
    invoke-static {v2, p3, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;III)V

    :cond_2
    const/4 p3, 0x6

    if-eq p0, p3, :cond_3

    const/16 p3, 0x9

    if-eq p0, p3, :cond_3

    const/4 p3, 0x7

    if-ne p0, p3, :cond_4

    .line 649
    :cond_3
    invoke-static {v2, v1, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;III)V

    :cond_4
    return-void
.end method


# virtual methods
.method public checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;Landroid/content/Intent;Landroid/app/ActivityOptions;)I
    .locals 30

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p7

    move-object/from16 v5, p10

    .line 205
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x2

    const/16 v16, 0x0

    const/4 v8, 0x1

    if-eqz v15, :cond_1

    if-eqz v5, :cond_1

    .line 209
    invoke-virtual/range {p10 .. p10}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v17, v16

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v17, v8

    :goto_1
    const/16 v2, 0x3e8

    if-eqz v17, :cond_5

    if-eqz v10, :cond_4

    if-eq v0, v2, :cond_4

    const/16 v3, 0x403

    if-ne v0, v3, :cond_2

    goto :goto_2

    .line 220
    :cond_2
    invoke-virtual {v9, v10, v12}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v5, "Home app"

    move/from16 v2, p1

    move/from16 v3, p4

    move-object/from16 v4, p9

    .line 221
    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 227
    :cond_3
    iget-object v3, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 228
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 229
    iget v3, v3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v3, :cond_5

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v5, "Active ime"

    move/from16 v2, p1

    move/from16 v3, p4

    move-object/from16 v4, p9

    .line 230
    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_4
    :goto_2
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v5, "Important callingUid"

    move/from16 v2, p1

    move/from16 v3, p4

    move-object/from16 v4, p9

    .line 215
    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 238
    :cond_5
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getBalAppSwitchesState()I

    move-result v7

    .line 241
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result v6

    .line 242
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v4

    if-gt v6, v8, :cond_6

    move v3, v8

    goto :goto_3

    :cond_6
    move/from16 v3, v16

    :goto_3
    if-eq v7, v1, :cond_8

    if-ne v7, v8, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v0, v16

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v8

    :goto_5
    if-nez v0, :cond_9

    .line 250
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 251
    invoke-virtual {v0, v10}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    if-nez v4, :cond_c

    :cond_a
    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    move/from16 v0, v16

    goto :goto_7

    :cond_c
    :goto_6
    move v0, v8

    :goto_7
    if-eqz v17, :cond_d

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callingUidHasAnyVisibleWindow = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isCallingUidPersistentSystemProcess = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v2, p1

    move/from16 v3, p4

    move-object/from16 v4, p9

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_d
    if-ne v10, v13, :cond_e

    move v1, v6

    goto :goto_8

    .line 266
    :cond_e
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result v0

    move v1, v0

    :goto_8
    if-ne v10, v13, :cond_f

    move v0, v4

    goto :goto_9

    .line 270
    :cond_f
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v0

    .line 271
    :goto_9
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-ne v10, v13, :cond_10

    move v2, v3

    const/4 v8, 0x1

    goto :goto_b

    :cond_10
    if-eq v8, v2, :cond_12

    const/4 v8, 0x1

    if-gt v1, v8, :cond_11

    goto :goto_a

    :cond_11
    move/from16 v2, v16

    goto :goto_b

    :cond_12
    const/4 v8, 0x1

    :goto_a
    move v2, v8

    .line 281
    :goto_b
    invoke-static/range {p4 .. p4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 283
    invoke-static/range {p4 .. p4}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v8

    move/from16 v19, v0

    .line 285
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xa

    const/4 v1, 0x0

    const-string/jumbo v5, "uid in SDK sandbox has visible (non-toast) window"

    move/from16 v2, p1

    move/from16 v3, p4

    move-object/from16 v4, p9

    .line 286
    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_13
    move/from16 v19, v0

    .line 292
    :cond_14
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageNameIfUnique(II)Ljava/lang/String;

    move-result-object v8

    .line 297
    invoke-static {v5, v13, v8}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesAllowedByCaller(Landroid/app/ActivityOptions;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    if-eqz v5, :cond_16

    .line 301
    invoke-virtual/range {p10 .. p10}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v20

    if-nez v20, :cond_15

    goto :goto_c

    :cond_15
    move/from16 v15, v16

    goto :goto_d

    :cond_16
    :goto_c
    const/4 v15, 0x1

    :goto_d
    if-nez v15, :cond_18

    .line 304
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v20

    if-eqz v20, :cond_17

    goto :goto_e

    :cond_17
    move/from16 v20, v16

    goto :goto_f

    :cond_18
    :goto_e
    const/16 v20, 0x1

    .line 306
    :goto_f
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v21

    if-eqz v21, :cond_19

    const-string v21, "Activity start allowed"

    goto :goto_10

    :cond_19
    const-string v21, "Activity start would be allowed if the sender granted BAL privileges"

    :goto_10
    if-eq v13, v10, :cond_1a

    if-eqz v20, :cond_1a

    move/from16 v22, v19

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v23, v1

    move/from16 v1, p1

    move/from16 v24, v2

    move/from16 v2, p4

    move/from16 v25, v3

    move-object/from16 v3, p8

    move/from16 v26, v4

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move/from16 v27, v6

    move/from16 v6, v22

    move/from16 v28, v7

    move/from16 v7, v24

    move-object/from16 v18, v8

    const/16 v29, 0x1

    move-object/from16 v8, v21

    .line 311
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/BackgroundActivityStartController;->checkPiBackgroundActivityStart(IILandroid/app/BackgroundStartPrivileges;Landroid/content/Intent;Landroid/app/ActivityOptions;ZZLjava/lang/String;)I

    move-result v0

    move v1, v0

    goto :goto_11

    :cond_1a
    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v18, v8

    move/from16 v22, v19

    const/16 v29, 0x1

    move-object/from16 v19, v0

    move/from16 v1, v16

    :goto_11
    if-eqz v1, :cond_1b

    .line 317
    invoke-virtual/range {v19 .. v19}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez v15, :cond_1b

    return v1

    :cond_1b
    const-string v7, "ActivityTaskManager"

    if-eqz v17, :cond_22

    const-string v0, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    .line 325
    invoke-static {v0, v11, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x6

    const/4 v3, 0x1

    const-string v7, "START_ACTIVITIES_FROM_BACKGROUND permission granted"

    move-object/from16 v2, v19

    move/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p9

    .line 327
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IILandroid/app/BackgroundStartPrivileges;ZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 333
    :cond_1c
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x3

    const/4 v3, 0x1

    const-string v7, "Recents Component"

    move-object/from16 v2, v19

    move/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p9

    .line 334
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IILandroid/app/BackgroundStartPrivileges;ZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 341
    :cond_1d
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    const/4 v3, 0x1

    const-string v7, "Device Owner"

    move-object/from16 v2, v19

    move/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p9

    .line 342
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IILandroid/app/BackgroundStartPrivileges;ZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 349
    :cond_1e
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isAffiliatedProfileOwner(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x3

    const/4 v3, 0x1

    const-string v7, "Affiliated Profile Owner"

    move-object/from16 v2, v19

    move/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p9

    .line 350
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IILandroid/app/BackgroundStartPrivileges;ZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 357
    :cond_1f
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 358
    iget-object v2, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x3

    const/4 v3, 0x1

    const-string v7, "Companion App"

    move-object/from16 v2, v19

    move/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p9

    .line 359
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IILandroid/app/BackgroundStartPrivileges;ZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 366
    :cond_20
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v10, v11, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background activity start for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " allowed because SYSTEM_ALERT_WINDOW permission is granted."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    const/4 v3, 0x1

    const-string v7, "SYSTEM_ALERT_WINDOW permission is granted"

    move-object/from16 v2, v19

    move/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p9

    .line 372
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IILandroid/app/BackgroundStartPrivileges;ZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 380
    :cond_21
    invoke-static {}, Lcom/android/server/wm/BackgroundActivityStartController;->isSystemExemptFlagEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v2, 0x82

    invoke-virtual {v0, v2, v10, v12}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x6

    const/4 v3, 0x1

    const-string v7, "OP_SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION appop is granted"

    move-object/from16 v2, v19

    move/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p9

    .line 383
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IILandroid/app/BackgroundStartPrivileges;ZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_22
    if-nez p6, :cond_23

    if-eqz v20, :cond_23

    if-nez v1, :cond_23

    move/from16 v8, v29

    goto :goto_12

    :cond_23
    move/from16 v8, v16

    :goto_12
    if-eqz v8, :cond_24

    .line 397
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v14, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    move-object v11, v0

    move v0, v13

    goto :goto_13

    :cond_24
    move-object/from16 v11, p6

    move v0, v10

    :goto_13
    if-eqz v11, :cond_2c

    if-eqz v17, :cond_2c

    move/from16 v14, v28

    .line 404
    invoke-virtual {v11, v14}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(I)I

    move-result v6

    if-eqz v6, :cond_26

    const-string v2, ") is allowed"

    const-string v3, ", uid = "

    const-string v4, "callerApp process (pid = "

    if-eqz v8, :cond_25

    const/4 v1, 0x1

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v11}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v0, v6

    move/from16 v2, p1

    move/from16 v3, p4

    move-object/from16 v4, p9

    move/from16 p2, v6

    move-object/from16 v6, v21

    .line 407
    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_14
    move v1, v0

    goto/16 :goto_16

    :cond_25
    move/from16 p2, v6

    const/4 v5, 0x1

    .line 412
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v11}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p2

    move-object/from16 v2, v19

    move v3, v5

    move/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p9

    .line 412
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IILandroid/app/BackgroundStartPrivileges;ZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_26
    move/from16 p2, v6

    .line 420
    iget-object v2, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 421
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 423
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_15
    if-ltz v3, :cond_29

    .line 424
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    .line 425
    invoke-virtual {v4, v14}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(I)I

    move-result v5

    if-eq v4, v11, :cond_28

    if-eqz v5, :cond_28

    const-string v2, " is allowed"

    const-string v3, " from uid "

    const-string/jumbo v6, "process"

    if-eqz v8, :cond_27

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v0, v5

    const/4 v1, 0x1

    move/from16 v2, p1

    move/from16 v3, p4

    move-object/from16 v4, p9

    move-object v5, v6

    move-object/from16 v6, v21

    .line 429
    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_14

    :cond_27
    const/4 v7, 0x1

    .line 436
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v0, v5

    move-object/from16 v2, v19

    move v3, v7

    move/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p9

    move-object v7, v8

    .line 436
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IILandroid/app/BackgroundStartPrivileges;ZIILandroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    :cond_29
    :goto_16
    if-eqz v8, :cond_2a

    if-eqz v1, :cond_2d

    .line 450
    invoke-virtual/range {v19 .. v19}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v0

    if-eqz v0, :cond_2d

    if-nez v15, :cond_2d

    return v1

    :cond_2a
    move/from16 v0, p2

    if-nez v0, :cond_2b

    move/from16 v8, v29

    goto :goto_17

    :cond_2b
    move/from16 v8, v16

    .line 459
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "balAllowedForCaller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (should have returned)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_18

    :cond_2c
    move/from16 v14, v28

    :cond_2d
    :goto_18
    if-nez v18, :cond_2f

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v10, v13, :cond_2e

    move-object v2, v12

    goto :goto_19

    .line 468
    :cond_2e
    iget-object v2, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    :goto_19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[debugOnly]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    :cond_2f
    move-object/from16 v8, v18

    .line 472
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [callingPackage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; callingUid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; appSwitchState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; callingUidHasAnyVisibleWindow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; callingUidProcState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/app/ActivityManager;

    const-string v3, "PROCESS_STATE_"

    move/from16 v5, v27

    .line 476
    invoke-static {v2, v3, v5}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; isCallingUidPersistentSystemProcess: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; balAllowedByPiSender: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; realCallingPackage: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; realCallingUid: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; realCallingUidHasAnyVisibleWindow: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; realCallingUidProcState: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Landroid/app/ActivityManager;

    move/from16 v8, v23

    .line 483
    invoke-static {v4, v3, v8}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; isRealCallingUidPersistentSystemProcess: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; originatingPendingIntent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p7

    move v4, v15

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "; backgroundStartPrivileges: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p8

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "; intent: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p9

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; callerApp: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; inVisibleTask: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_30

    .line 491
    invoke-virtual {v11}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v10

    if-eqz v10, :cond_30

    move/from16 v10, v29

    goto :goto_1b

    :cond_30
    move/from16 v10, v16

    :goto_1b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_32

    .line 495
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resultIfPiSenderAllowsBal = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " at the end but logVerdictChangeByPiDefaultChange = false"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 495
    invoke-static {v4, v10}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 498
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "With BAL hardening this activity start would be blocked!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 508
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Without BAL hardening this activity start would be allowed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background activity launch blocked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 516
    iget-object v0, v9, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 517
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    if-eqz v3, :cond_33

    move/from16 v10, v29

    goto :goto_1c

    :cond_33
    move/from16 v10, v16

    :goto_1c
    move-object/from16 v1, p9

    move-object v2, v11

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v7, p4

    move v9, v14

    .line 518
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityMetricsLogger;->logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V

    :cond_34
    return v16
.end method

.method public final checkPiBackgroundActivityStart(IILandroid/app/BackgroundStartPrivileges;Landroid/content/Intent;Landroid/app/ActivityOptions;ZZLjava/lang/String;)I
    .locals 7

    .line 538
    invoke-static {p5}, Lcom/android/server/am/PendingIntentRecord;->isPendingIntentBalAllowedByPermission(Landroid/app/ActivityOptions;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, -0x1

    const/4 v0, 0x1

    const-string v1, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    .line 540
    invoke-static {v1, p2, p5, v0}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p5

    if-nez p5, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 543
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "realCallingUid has BAL permission. realCallingUid: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v3, p2

    move-object v4, p4

    move-object v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    if-eqz p6, :cond_1

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 552
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "realCallingUid has visible (non-toast) window. realCallingUid: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v3, p2

    move-object v4, p4

    move-object v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    if-eqz p7, :cond_2

    .line 560
    invoke-virtual {p3}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 561
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "realCallingUid is persistent system process AND intent sender allowed (allowBackgroundActivityStart = true). realCallingUid: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v3, p2

    move-object v4, p4

    move-object v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 568
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 569
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 568
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 570
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "realCallingUid is a companion app. realCallingUid: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v3, p2

    move-object v4, p4

    move-object v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/BackgroundActivityStartController;->logStartAllowedAndReturnCode(IZIILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final isHomeApp(ILjava/lang/String;)Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 160
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-nez p2, :cond_2

    return v2

    .line 165
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 166
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    .line 167
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 168
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;Landroid/content/Intent;Landroid/app/ActivityOptions;)Z
    .locals 0

    .line 182
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;Landroid/content/Intent;Landroid/app/ActivityOptions;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
