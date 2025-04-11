.class public Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;
.super Ljava/lang/Object;
.source "OneHandOpPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

.field public final synthetic this$0:Lcom/android/server/wm/OneHandOpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OneHandOpPolicy;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/OneHandOpPolicy;Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-static {v0}, Lcom/android/server/wm/OneHandOpPolicy;->-$$Nest$fgetmService(Lcom/android/server/wm/OneHandOpPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 323
    invoke-interface {v1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    .line 324
    iput-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    const-string v3, "OneHandOpController"

    const-string v4, "OneHandOp service has died unexpectedly"

    .line 326
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v3, Landroid/view/MagnificationSpec;

    invoke-direct {v3}, Landroid/view/MagnificationSpec;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 328
    invoke-virtual {v3, v4, v5, v5}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    .line 329
    iget-object v4, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/wm/OneHandOpPolicy;->changeDisplayScaleLocked(Landroid/view/MagnificationSpec;ZLandroid/view/IInputFilter;)V

    goto :goto_0

    :cond_0
    move v5, v2

    .line 332
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v5, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-static {v0}, Lcom/android/server/wm/OneHandOpPolicy;->-$$Nest$fgetmContext(Lcom/android/server/wm/OneHandOpPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/OneHandOpPolicy;->isOneHandOpEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-static {v0}, Lcom/android/server/wm/OneHandOpPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/OneHandOpPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-static {p0}, Lcom/android/server/wm/OneHandOpPolicy;->-$$Nest$fgetmRestartRunnable(Lcom/android/server/wm/OneHandOpPolicy;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 332
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public isRegistered()Z
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .locals 2

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    if-nez v0, :cond_0

    .line 297
    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 298
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public unregisterWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 308
    :try_start_0
    iput-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    .line 309
    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
