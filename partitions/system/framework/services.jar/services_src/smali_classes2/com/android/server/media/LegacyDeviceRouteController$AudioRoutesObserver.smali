.class public Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "LegacyDeviceRouteController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/LegacyDeviceRouteController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/LegacyDeviceRouteController;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/LegacyDeviceRouteController;Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;-><init>(Lcom/android/server/media/LegacyDeviceRouteController;)V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-static {v0, p1}, Lcom/android/server/media/LegacyDeviceRouteController;->-$$Nest$mcreateRouteFromAudioInfo(Lcom/android/server/media/LegacyDeviceRouteController;Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-static {v1, p1}, Lcom/android/server/media/LegacyDeviceRouteController;->-$$Nest$fputmDeviceRoute(Lcom/android/server/media/LegacyDeviceRouteController;Landroid/media/MediaRoute2Info;)V

    .line 179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object p0, p0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;->this$0:Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-static {p0, p1}, Lcom/android/server/media/LegacyDeviceRouteController;->-$$Nest$mnotifyDeviceRouteUpdate(Lcom/android/server/media/LegacyDeviceRouteController;Landroid/media/MediaRoute2Info;)V

    return-void

    :catchall_0
    move-exception p0

    .line 179
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
