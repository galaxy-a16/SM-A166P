.class public Lvendor/samsung/hardware/health/ISehHealth$Default;
.super Ljava/lang/Object;
.source "ISehHealth.java"

# interfaces
.implements Lvendor/samsung/hardware/health/ISehHealth;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerCallback(Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V
    .locals 0

    return-void
.end method

.method public sehWriteEnableToParam(IZ)V
    .locals 0

    return-void
.end method

.method public unregisterCallback(Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
