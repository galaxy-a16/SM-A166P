.class public Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;
.super Ljava/lang/Object;
.source "BrightnessThrottler.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public mExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/server/display/BrightnessThrottler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessThrottler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->this$0:Lcom/android/server/display/BrightnessThrottler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {p1}, Lcom/android/server/display/BrightnessThrottler;->-$$Nest$fgetmDeviceConfigHandler(Lcom/android/server/display/BrightnessThrottler;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->this$0:Lcom/android/server/display/BrightnessThrottler;

    invoke-static {p1}, Lcom/android/server/display/BrightnessThrottler;->-$$Nest$mloadThermalBrightnessThrottlingDataFromDeviceConfig(Lcom/android/server/display/BrightnessThrottler;)V

    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->this$0:Lcom/android/server/display/BrightnessThrottler;

    invoke-static {p0}, Lcom/android/server/display/BrightnessThrottler;->-$$Nest$mresetThermalThrottlingData(Lcom/android/server/display/BrightnessThrottler;)V

    return-void
.end method

.method public startListening()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->this$0:Lcom/android/server/display/BrightnessThrottler;

    invoke-static {v0}, Lcom/android/server/display/BrightnessThrottler;->-$$Nest$fgetmDeviceConfig(Lcom/android/server/display/BrightnessThrottler;)Landroid/provider/DeviceConfigInterface;

    move-result-object v0

    const-string v1, "display_manager"

    iget-object v2, p0, Lcom/android/server/display/BrightnessThrottler$DeviceConfigListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2, p0}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
