.class public Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;
.super Lcom/samsung/android/mocca/IInternalServiceBridge$Stub;
.source "MoccaLoader.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final SUPPORTED_TYPES:[Ljava/lang/String;

.field public final mListeners:Ljava/util/Map;

.field public mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/mocca/IInternalServiceBridge$Stub;-><init>()V

    const-string/jumbo v0, "touch"

    .line 100
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->SUPPORTED_TYPES:[Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mWms:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public clearAllListeners()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 147
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getValue(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable(Ljava/lang/String;)Z
    .locals 4

    .line 123
    iget-object p0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->SUPPORTED_TYPES:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    const-string/jumbo v1, "touch"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mocca/IInternalServiceBridgeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 157
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "event"

    .line 158
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "touch"

    .line 159
    invoke-interface {p0, p1, v1}, Lcom/samsung/android/mocca/IInternalServiceBridgeListener;->onUpdated(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    const-string p1, "MoccaLoader"

    const-string v1, "PointerEvent : Failed to invoke method"

    .line 161
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public setListener(Ljava/lang/String;Lcom/samsung/android/mocca/IInternalServiceBridgeListener;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start()V
    .locals 2

    const-string/jumbo v0, "window"

    .line 108
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    :cond_0
    return-void
.end method
