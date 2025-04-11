.class public Lcom/android/server/vibrator/VibrationCustomSettings$1;
.super Ljava/lang/Object;
.source "VibrationCustomSettings.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationCustomSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationCustomSettings;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationCustomSettings$1;->this$0:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFoldStateChanged isFolded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings$1;->this$0:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->-$$Nest$mgetDefaultVibratorController(Lcom/android/server/vibrator/VibrationCustomSettings;)Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings$1;->this$0:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-static {p0}, Lcom/android/server/vibrator/VibrationCustomSettings;->-$$Nest$mgetDefaultVibratorController(Lcom/android/server/vibrator/VibrationCustomSettings;)Lcom/android/server/vibrator/VibratorController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->setFoldState(Z)V

    :cond_0
    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 1

    .line 399
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onTableModeChanged. isTableMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibratorManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
