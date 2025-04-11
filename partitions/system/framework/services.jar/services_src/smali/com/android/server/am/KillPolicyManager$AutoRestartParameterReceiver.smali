.class public Lcom/android/server/am/KillPolicyManager$AutoRestartParameterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KillPolicyManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p0, "MIN_TRIGGER_SIZE"

    const/16 p1, 0xa

    .line 298
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "NEVER_COLLECT_WITHIN"

    const/16 v0, 0xc

    .line 300
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "COMPACT_TRIGGER_SIZE"

    const/16 v1, 0x12c

    .line 302
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "NATIVE_FLOOD_RATIO"

    const/16 v2, 0x1e

    .line 304
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "SYSPERS_FLOOD_RATIO"

    .line 306
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 309
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetRANGE_AUTO_RESTART_MIN_TRIGGER_SIZE()Ljava/time/temporal/ValueRange;

    move-result-object v2

    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-static {p0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfputsMinTriggerSize(I)V

    .line 313
    :cond_0
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetRANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN()Ljava/time/temporal/ValueRange;

    move-result-object p0

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 314
    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfputsNeverCollectWithin(I)V

    .line 317
    :cond_1
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetRANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE()Ljava/time/temporal/ValueRange;

    move-result-object p0

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 318
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfputsCompactTriggerSize(I)V

    .line 321
    :cond_2
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetRANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO()Ljava/time/temporal/ValueRange;

    move-result-object p0

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 322
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfputsNativeFloodRatio(I)V

    .line 325
    :cond_3
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetRANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO()Ljava/time/temporal/ValueRange;

    move-result-object p0

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 326
    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfputsSyspersFloodRatio(I)V

    .line 329
    :cond_4
    sget-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p0, :cond_5

    .line 330
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Auto Restart Parameter Updated. {"

    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "sMinTriggerSize="

    .line 332
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsMinTriggerSize()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sNeverCollectWithin="

    .line 333
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsNeverCollectWithin()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sCompactTriggerSize="

    .line 334
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsCompactTriggerSize()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sNativeFloodRatio="

    .line 335
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsNativeFloodRatio()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sSyspersFloodRatio="

    .line 336
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsSyspersFloodRatio()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    .line 337
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ActivityManager_kpm"

    .line 338
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
