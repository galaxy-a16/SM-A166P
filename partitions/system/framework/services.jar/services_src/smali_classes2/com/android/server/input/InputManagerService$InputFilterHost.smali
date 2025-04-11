.class public final Lcom/android/server/input/InputManagerService$InputFilterHost;
.super Landroid/view/IInputFilterHost$Stub;
.source "InputManagerService.java"


# instance fields
.field public mDisconnected:Z

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 4151
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputFilterHost$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$InputFilterHost-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public disconnectLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 4157
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->mDisconnected:Z

    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 10

    .line 4162
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    const-string v1, "android.permission.INJECT_EVENTS"

    const-string/jumbo v2, "sendInputEvent()"

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$mcheckCallingPermission(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "event must not be null"

    .line 4167
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4169
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4170
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->mDisconnected:Z

    if-nez v1, :cond_0

    .line 4171
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 p0, 0x4000000

    or-int v9, p2, p0

    move-object v2, p1

    invoke-interface/range {v1 .. v9}, Lcom/android/server/input/NativeInputManagerService;->injectInputEvent(Landroid/view/InputEvent;ZIIIIII)I

    .line 4179
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 4164
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The INJECT_EVENTS permission is required for injecting input events."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
