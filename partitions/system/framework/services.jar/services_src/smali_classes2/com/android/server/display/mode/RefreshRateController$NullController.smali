.class public Lcom/android/server/display/mode/RefreshRateController$NullController;
.super Lcom/android/server/display/mode/RefreshRateController;
.source "RefreshRateController.java"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 587
    invoke-direct {p0, p1, v0}, Lcom/android/server/display/mode/RefreshRateController;-><init>(Landroid/os/IBinder;Lcom/android/server/display/mode/RefreshRateController-IA;)V

    return-void
.end method


# virtual methods
.method public getControllerType()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "NullController"

    return-object p0
.end method

.method public updatePassiveLocked(Z)V
    .locals 0

    const-string p0, "RefreshRateModeManager"

    const-string p1, "NullController-updatePassiveLocked controller is not ready!"

    .line 597
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
