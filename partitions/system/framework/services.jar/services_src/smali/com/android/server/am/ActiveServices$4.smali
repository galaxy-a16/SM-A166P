.class public Lcom/android/server/am/ActiveServices$4;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public final synthetic val$callerFg:Z

.field public final synthetic val$callingFeatureId:Ljava/lang/String;

.field public final synthetic val$callingPackage:Ljava/lang/String;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingProcessName:Ljava/lang/String;

.field public final synthetic val$callingProcessState:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$connection:Landroid/app/IServiceConnection;

.field public final synthetic val$fgRequired:Z

.field public final synthetic val$isBinding:Z

.field public final synthetic val$s:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$serviceIntent:Landroid/content/Intent;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;ILjava/lang/String;IZLandroid/app/BackgroundStartPrivileges;)V
    .locals 0

    .line 1466
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingFeatureId:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iput-object p6, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iput-boolean p7, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iput p8, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    iput-boolean p9, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z

    iput-object p10, p0, Lcom/android/server/am/ActiveServices$4;->val$connection:Landroid/app/IServiceConnection;

    iput p11, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPid:I

    iput-object p12, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessName:Ljava/lang/String;

    iput p13, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessState:I

    iput-boolean p14, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    iput-object p15, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1469
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1470
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {v1}, Lcom/android/server/am/ActiveServices;->-$$Nest$fgetmPendingBringups(Lcom/android/server/am/ActiveServices;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1471
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1475
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingFeatureId:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iget v8, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    iget-boolean v9, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z

    iget-object v10, p0, Lcom/android/server/am/ActiveServices$4;->val$connection:Landroid/app/IServiceConnection;

    invoke-static/range {v1 .. v10}, Lcom/android/server/am/ActiveServices;->-$$Nest$mrequestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1479
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1481
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    .line 1483
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->-$$Nest$mbringUpServiceLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/TransactionTooLargeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1492
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 1493
    throw v2

    .line 1492
    :catch_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 1496
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iget v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPid:I

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessState:I

    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    iget-boolean v9, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iget-object v10, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    invoke-static/range {v1 .. v11}, Lcom/android/server/am/ActiveServices;->-$$Nest$mstartServiceInnerLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IILjava/lang/String;IZZLandroid/app/BackgroundStartPrivileges;Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_5
    .catch Landroid/os/TransactionTooLargeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1503
    :catch_1
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
