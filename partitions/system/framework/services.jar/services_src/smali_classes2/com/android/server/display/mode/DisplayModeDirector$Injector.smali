.class public interface abstract Lcom/android/server/display/mode/DisplayModeDirector$Injector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# static fields
.field public static final PEAK_REFRESH_RATE_URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "peak_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->PEAK_REFRESH_RATE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
.end method

.method public abstract getDeviceConfig()Landroid/provider/DeviceConfigInterface;
.end method

.method public abstract getDisplay(I)Landroid/view/Display;
.end method

.method public abstract getDisplayInfo(ILandroid/view/DisplayInfo;)Z
.end method

.method public abstract getDisplays()[Landroid/view/Display;
.end method

.method public abstract isDozeState(Landroid/view/Display;)Z
.end method

.method public abstract registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
.end method

.method public abstract registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
.end method

.method public abstract registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
.end method

.method public abstract registerThermalServiceListener(Landroid/os/IThermalEventListener;)Z
.end method

.method public abstract supportsFrameRateOverride()Z
.end method
