.class public Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;
.super Landroid/os/Handler;
.source "SemFaceBrightManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;Landroid/os/Looper;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x5

    const-string v3, "SemFaceBrightManager"

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "handleMessage: MSG_BRIGHTNESS_READY_TO_SET_MAX"

    .line 85
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->-$$Nest$fputmIsReadyToSetMaxBrightness(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;Z)V

    goto :goto_0

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: MSG_BRIGHTNESS_LEVEL_UP "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->-$$Nest$fgetmScreenFlashBrightnessLevelUpCorrected(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->-$$Nest$fgetmScreenFlashBrightnessLevelUpCorrected(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->-$$Nest$msetBrightness(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;I)V

    .line 81
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
