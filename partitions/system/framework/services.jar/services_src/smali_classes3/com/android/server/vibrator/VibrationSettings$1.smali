.class public Lcom/android/server/vibrator/VibrationSettings$1;
.super Ljava/lang/Object;
.source "VibrationSettings.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 266
    :try_start_0
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fgetmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-static {v2, p1}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fputmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;Z)V

    .line 269
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p1, v3}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fputmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;Z)V

    .line 271
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 273
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 271
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
