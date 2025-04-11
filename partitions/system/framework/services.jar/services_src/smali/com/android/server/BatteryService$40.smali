.class public Lcom/android/server/BatteryService$40;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 4364
    iput-object p1, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 4367
    iget-object v0, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLockBatteryInfoBackUp(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4368
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/fg_asoc"

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v1

    .line 4369
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@currentAsoc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    iget-object v3, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryAsocFromEfsLocked(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryAsoc(Lcom/android/server/BatteryService;J)V

    .line 4371
    iget-object v3, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 4372
    iget-object v3, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$minitializeSavedAsoc(Lcom/android/server/BatteryService;J)J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryAsoc(Lcom/android/server/BatteryService;J)V

    :cond_0
    cmp-long v3, v1, v5

    if-ltz v3, :cond_1

    .line 4375
    iget-object v3, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0xa

    cmp-long v1, v3, v1

    if-gez v1, :cond_1

    .line 4377
    iget-object v1, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryAsoc(Lcom/android/server/BatteryService;J)V

    .line 4378
    iget-object v1, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/efs/FactoryApp/asoc"

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 4379
    iget-object v1, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryType(Lcom/android/server/BatteryService;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 4380
    iget-object v1, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/sec_auth/asoc"

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 4383
    :cond_1
    iget-object p0, p0, Lcom/android/server/BatteryService$40;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "/sys/class/power_supply/battery/fg_asoc"

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 4384
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
