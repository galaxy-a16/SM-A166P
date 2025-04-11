.class public Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "AudioPoliciesDeviceRouteController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/AudioPoliciesDeviceRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/AudioPoliciesDeviceRouteController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/AudioPoliciesDeviceRouteController;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/AudioPoliciesDeviceRouteController;Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;-><init>(Lcom/android/server/media/AudioPoliciesDeviceRouteController;)V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/AudioPoliciesDeviceRouteController;

    invoke-static {v0, p1}, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->-$$Nest$mcreateRouteFromAudioInfo(Lcom/android/server/media/AudioPoliciesDeviceRouteController;Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/AudioPoliciesDeviceRouteController;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/AudioPoliciesDeviceRouteController;

    invoke-static {v1, p1}, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->-$$Nest$fputmDeviceRoute(Lcom/android/server/media/AudioPoliciesDeviceRouteController;Landroid/media/MediaRoute2Info;)V

    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/AudioPoliciesDeviceRouteController;

    invoke-static {v1}, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->-$$Nest$fgetmSelectedRoute(Lcom/android/server/media/AudioPoliciesDeviceRouteController;)Landroid/media/MediaRoute2Info;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/AudioPoliciesDeviceRouteController;

    invoke-static {p0}, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->-$$Nest$fgetmOnDeviceRouteChangedListener(Lcom/android/server/media/AudioPoliciesDeviceRouteController;)Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;->onDeviceRouteChanged(Landroid/media/MediaRoute2Info;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
