.class public Lcom/android/server/DeviceIdleController$8;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .line 2588
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$8;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAwakeStateChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 1

    .line 2594
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$8;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 2595
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$8;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->keyguardShowingLocked(Z)V

    .line 2596
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
