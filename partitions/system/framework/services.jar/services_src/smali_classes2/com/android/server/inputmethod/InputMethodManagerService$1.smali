.class public Lcom/android/server/inputmethod/InputMethodManagerService$1;
.super Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;
.source "InputMethodManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field public final synthetic val$serverChannel:Landroid/view/InputChannel;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;)V
    .locals 0

    .line 3260
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->val$serverChannel:Landroid/view/InputChannel;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/inputmethod/IInputMethodSession;)V
    .locals 4

    .line 3263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3265
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->val$curMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->val$serverChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3268
    throw p0
.end method
