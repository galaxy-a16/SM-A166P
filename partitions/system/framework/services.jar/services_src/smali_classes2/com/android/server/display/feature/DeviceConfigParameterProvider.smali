.class public Lcom/android/server/display/feature/DeviceConfigParameterProvider;
.super Ljava/lang/Object;
.source "DeviceConfigParameterProvider.java"


# instance fields
.field public final mDeviceConfig:Landroid/provider/DeviceConfigInterface;


# direct methods
.method public constructor <init>(Landroid/provider/DeviceConfigInterface;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    return-void
.end method


# virtual methods
.method public addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v0, "display_manager"

    invoke-interface {p0, v0, p1, p2}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public isDisableScreenWakeLocksWhileCachedFeatureEnabled()Z
    .locals 3

    .line 40
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v0, "disable_screen_wake_locks_while_cached"

    const/4 v1, 0x1

    const-string v2, "display_manager"

    invoke-interface {p0, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
