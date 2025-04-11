.class public final Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;
.super Ljava/lang/Object;
.source "VibrationSettings.java"

# interfaces
.implements Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$VirtualDisplayListener;
.implements Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;


# instance fields
.field public final mAppsOnVirtualDevice:Ljava/util/Set;

.field public final mVirtualDisplays:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->mVirtualDisplays:Ljava/util/Set;

    .line 804
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->mAppsOnVirtualDevice:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public isAppOrDisplayOnAnyVirtualDevice(II)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 851
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->mAppsOnVirtualDevice:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 857
    :cond_1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->mVirtualDisplays:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 859
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAppsOnAnyVirtualDeviceChanged(Ljava/util/Set;)V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->mAppsOnVirtualDevice:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 827
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->mAppsOnVirtualDevice:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 828
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onVirtualDisplayCreated(I)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->mVirtualDisplays:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 812
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onVirtualDisplayRemoved(I)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 818
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VirtualDeviceListener;->mVirtualDisplays:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 819
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
