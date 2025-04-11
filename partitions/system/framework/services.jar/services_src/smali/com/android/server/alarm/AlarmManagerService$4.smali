.class public Lcom/android/server/alarm/AlarmManagerService$4;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AlarmManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 2374
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .locals 8

    .line 2378
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x6b

    if-ne p1, v1, :cond_10

    .line 2380
    invoke-static {p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 2383
    :cond_0
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1, p3, p2}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 2386
    :cond_1
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 2391
    :cond_2
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 2395
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2396
    :try_start_0
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 2398
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    .line 2400
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2402
    :cond_3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 2403
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 2405
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_4

    return-void

    .line 2409
    :cond_4
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2410
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2409
    invoke-static {v2, p3, v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$misScheduleExactAlarmDeniedByDefault(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    .line 2416
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v5

    :goto_1
    if-ne v1, v3, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    move v1, v4

    goto :goto_2

    :cond_7
    move v1, v5

    :goto_2
    if-ne p1, v3, :cond_8

    :goto_3
    move v4, v2

    goto :goto_5

    :cond_8
    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    move v4, v5

    goto :goto_5

    .line 2426
    :cond_a
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    .line 2427
    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-ne v1, v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    if-nez v1, :cond_c

    move v1, v4

    goto :goto_4

    :cond_c
    move v1, v5

    :goto_4
    if-ne p1, v3, :cond_d

    goto :goto_3

    :cond_d
    if-nez p1, :cond_9

    :goto_5
    if-eqz v1, :cond_e

    if-nez v4, :cond_e

    .line 2437
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2438
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    :cond_e
    if-nez v1, :cond_f

    if-eqz v4, :cond_f

    .line 2440
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0, p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$msendScheduleExactAlarmPermissionStateChangedBroadcast(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V

    :cond_f
    :goto_6
    return-void

    :catchall_0
    move-exception p0

    .line 2405
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_10
    :goto_7
    return-void
.end method
