.class public interface abstract Lcom/samsung/android/camera/ICameraServiceWorker;
.super Ljava/lang/Object;
.source "ICameraServiceWorker.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "com$samsung$android$camera$ICameraServiceWorker"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract acquireRequestInjector()Landroid/os/IBinder;
.end method

.method public abstract getDeviceInjectorOverride(Ljava/lang/String;I)Z
.end method

.method public abstract getDeviceOrientationForDeviceInjector(Ljava/lang/String;I)I
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract notifyCameraSessionEvent(ILjava/lang/String;)V
.end method

.method public abstract notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
.end method

.method public abstract pingForUpdate()V
.end method

.method public abstract queryPackageName(II)Ljava/lang/String;
.end method

.method public abstract setDeviceOrientationListener(Z)V
.end method

.method public abstract storeLoggingData(ILjava/lang/String;)V
.end method
