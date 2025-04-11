.class public Lcom/android/server/notification/SmartAlertController$1;
.super Ljava/lang/Object;
.source "SmartAlertController.java"

# interfaces
.implements Lcom/samsung/android/gesture/SemMotionEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method public static synthetic $r8$lambda$qJOSJnh99UBO_mZ-xRKuIqpPgsU(Lcom/android/server/notification/SmartAlertController$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/SmartAlertController$1;->lambda$onMotionEvent$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onMotionEvent$0()V
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmInCall(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    const-string v1, "SmartAlertController"

    if-eqz v0, :cond_0

    const-string p0, "SmartAlert - inCall, vibration will be returned"

    .line 96
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "SmartAlert - vibrate"

    .line 98
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmVibrator(Lcom/android/server/notification/SmartAlertController;)Landroid/os/Vibrator;

    move-result-object v1

    const/16 v2, 0x3e8

    const-string v3, "android"

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {p0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmPickUpVibratePattern(Lcom/android/server/notification/SmartAlertController;)[J

    move-result-object p0

    const/4 v0, -0x1

    .line 101
    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v4

    const-string v5, "SmartAlertController"

    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v0, 0x31

    .line 102
    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v6

    .line 99
    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .locals 3

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result p1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SmartAlertController"

    const-string v0, "SmartAlert - SemMotionRecognitionEvent.SMART_ALERT"

    .line 91
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {p1}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmWakeLock(Lcom/android/server/notification/SmartAlertController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 94
    new-instance v0, Lcom/android/server/notification/SmartAlertController$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/notification/SmartAlertController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/SmartAlertController$1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
