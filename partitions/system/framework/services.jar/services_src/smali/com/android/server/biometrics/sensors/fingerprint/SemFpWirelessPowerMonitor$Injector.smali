.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;
.super Ljava/lang/Object;
.source "SemFpWirelessPowerMonitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showWirelessChargerErrorToastMessage(Landroid/content/Context;)V
    .locals 1

    const p0, 0x1040d03

    const/4 v0, 0x0

    .line 51
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
