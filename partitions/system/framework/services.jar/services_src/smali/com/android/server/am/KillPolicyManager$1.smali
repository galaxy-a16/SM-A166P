.class public Lcom/android/server/am/KillPolicyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KillPolicyManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmContext(Lcom/android/server/am/KillPolicyManager;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "power"

    .line 261
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 262
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    .line 264
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmContext(Lcom/android/server/am/KillPolicyManager;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->onDeviceIdleChanged(Z)V

    const-string p2, "ActivityManager_kpm"

    if-eqz p1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLastIdleExitRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fputmLastAwakeRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V

    .line 268
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLastIdleExitUpTimeMillis(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fputmLastAwakeUpTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V

    .line 269
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fputmLastIdleEnterRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V

    .line 271
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Awake realtime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLastAwakeRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Awake uptime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLastAwakeUpTimeMillis(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLastIdleEnterRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fputmLastIdleRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V

    .line 276
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fputmLastIdleExitRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V

    .line 277
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fputmLastIdleExitUpTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V

    .line 279
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle realtime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLastIdleRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$1;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {p0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmMemoryFloodDetector(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->onDeviceIdleChanged(Z)V

    :goto_1
    return-void
.end method
