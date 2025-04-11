.class public Lcom/android/server/tare/InternalResourceService$4;
.super Ljava/lang/Object;
.source "InternalResourceService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$4;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 8

    .line 327
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$4;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$4;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v2

    const-wide v3, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide/32 v5, 0xf731400

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tare/Agent;->reclaimUnusedAssetsLocked(DJZ)V

    .line 330
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$4;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;

    move-result-object v1

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->setLastReclamationTimeLocked(J)V

    .line 331
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$4;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mscheduleUnusedWealthReclamationLocked(Lcom/android/server/tare/InternalResourceService;)V

    .line 332
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
