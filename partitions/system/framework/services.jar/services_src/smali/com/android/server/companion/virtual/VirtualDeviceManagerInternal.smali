.class public abstract Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
.super Ljava/lang/Object;
.source "VirtualDeviceManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I
.end method

.method public abstract getDeviceIdsForUid(I)Landroid/util/ArraySet;
.end method

.method public abstract getDeviceOwnerUid(I)I
.end method

.method public abstract getDisplayIdsForDevice(I)Landroid/util/ArraySet;
.end method

.method public abstract getPreferredLocaleListForUid(I)Landroid/os/LocaleList;
.end method

.method public abstract getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;
.end method

.method public abstract isAppRunningOnAnyVirtualDevice(I)Z
.end method

.method public abstract isDisplayOwnedByAnyVirtualDevice(I)Z
.end method

.method public abstract onAppsOnVirtualDeviceChanged()V
.end method

.method public abstract onAuthenticationPrompt(I)V
.end method

.method public abstract onVirtualDisplayCreated(I)V
.end method

.method public abstract onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V
.end method

.method public abstract registerAppsOnVirtualDeviceListener(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;)V
.end method

.method public abstract registerVirtualDisplayListener(Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$VirtualDisplayListener;)V
.end method
