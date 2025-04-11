.class public final Lcom/android/server/inputmethod/IInputMethodInvoker;
.super Ljava/lang/Object;
.source "IInputMethodInvoker.java"


# instance fields
.field public final mTarget:Lcom/android/internal/inputmethod/IInputMethod;


# direct methods
.method public constructor <init>(Lcom/android/internal/inputmethod/IInputMethod;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    return-void
.end method

.method public static create(Lcom/android/internal/inputmethod/IInputMethod;)Lcom/android/server/inputmethod/IInputMethodInvoker;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    invoke-static {p0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodInvoker;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;-><init>(Lcom/android/internal/inputmethod/IInputMethod;)V

    return-object v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " must have been a BinderProxy."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBinderIdentityHashCode(Lcom/android/server/inputmethod/IInputMethodInvoker;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getCallerMethodName()Ljava/lang/String;
    .locals 3

    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 76
    array-length v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    const-string v0, "<bottom of call stack>"

    return-object v0

    .line 79
    :cond_0
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logRemoteException(Landroid/os/RemoteException;)V
    .locals 2

    .line 84
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPC failed at IInputMethodInvoker#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/inputmethod/IInputMethodInvoker;->getCallerMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 0

    .line 138
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public canStartStylusHandwriting(I)V
    .locals 0

    .line 246
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod;->canStartStylusHandwriting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 248
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    .line 237
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 239
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V
    .locals 0

    .line 184
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 186
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public finishStylusHandwriting()V
    .locals 0

    .line 275
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->finishStylusHandwriting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 277
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public hideSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)Z
    .locals 0

    .line 217
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/inputmethod/IInputMethod;->hideSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 219
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    const/4 p0, 0x0

    return p0
.end method

.method public initInkWindow()V
    .locals 0

    .line 266
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->initInkWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 268
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;I)V
    .locals 1

    .line 114
    new-instance v0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/IInputMethod$InitParams;-><init>()V

    .line 115
    iput-object p1, v0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->token:Landroid/os/IBinder;

    .line 116
    iput-object p2, v0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->privilegedOperations:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    .line 117
    iput p3, v0, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->navigationBarFlags:I

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, v0}, Lcom/android/internal/inputmethod/IInputMethod;->initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public minimizeSoftInput(I)V
    .locals 0

    .line 303
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod;->minimizeSoftInput(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 305
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    .locals 0

    .line 129
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethod;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onNavButtonFlagsChanged(I)V
    .locals 0

    .line 175
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod;->onNavButtonFlagsChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 177
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public removeStylusHandwritingWindow()V
    .locals 0

    .line 284
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->removeStylusHandwritingWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 286
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V
    .locals 0

    .line 193
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethod;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 195
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setStylusWindowIdleTimeoutForTest(J)V
    .locals 0

    .line 293
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethod;->setStylusWindowIdleTimeoutForTest(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 295
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public showSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)Z
    .locals 0

    .line 204
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/inputmethod/IInputMethod;->showSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 206
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    const/4 p0, 0x0

    return p0
.end method

.method public startInput(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IRemoteInputConnection;Landroid/view/inputmethod/EditorInfo;ZILandroid/window/ImeOnBackInvokedDispatcher;)V
    .locals 1

    .line 158
    new-instance v0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;-><init>()V

    .line 159
    iput-object p1, v0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->startInputToken:Landroid/os/IBinder;

    .line 160
    iput-object p2, v0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 161
    iput-object p3, v0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 162
    iput-boolean p4, v0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    .line 163
    iput p5, v0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->navigationBarFlags:I

    .line 164
    iput-object p6, v0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->imeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 166
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, v0}, Lcom/android/internal/inputmethod/IInputMethod;->startInput(Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)Z
    .locals 0

    .line 255
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputMethod;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 257
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    const/4 p0, 0x0

    return p0
.end method

.method public unbindInput()V
    .locals 0

    .line 147
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 149
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public undoMinimizeSoftInput()V
    .locals 0

    .line 312
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->undoMinimizeSoftInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 314
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public updateEditorToolType(I)V
    .locals 0

    .line 228
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod;->updateEditorToolType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 230
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method
