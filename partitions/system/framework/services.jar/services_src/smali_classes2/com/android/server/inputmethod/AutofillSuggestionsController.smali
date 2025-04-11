.class public final Lcom/android/server/inputmethod/AutofillSuggestionsController;
.super Ljava/lang/Object;
.source "AutofillSuggestionsController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AutofillSuggestionsController"


# instance fields
.field public mInlineSuggestionsRequestCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

.field public final mMethodMap:Landroid/util/ArrayMap;

.field public mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 81
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mMethodMap:Landroid/util/ArrayMap;

    .line 82
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    return-void
.end method

.method public static isInlineSuggestionsEnabled(Landroid/view/inputmethod/InputMethodInfo;Z)Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isInlineSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsInlineSuggestionsWithTouchExploration()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final clearPendingInlineSuggestionsRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    return-void
.end method

.method public invalidateAutofillSession()V
    .locals 2

    .line 155
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mInlineSuggestionsRequestCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    if-eqz p0, :cond_0

    .line 157
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    sget-object v0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->TAG:Ljava/lang/String;

    const-string v1, "Cannot invalidate autofill session."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;Z)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->clearPendingInlineSuggestionsRequest()V

    .line 90
    iput-object p3, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mInlineSuggestionsRequestCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    .line 91
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {v0, p4}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->isInlineSuggestionsEnabled(Landroid/view/inputmethod/InputMethodInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    new-instance p1, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    .line 96
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;-><init>(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    .line 97
    iget-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->performOnCreateInlineSuggestionsRequest()V

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {p3}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 112
    sget-object p1, Lcom/android/server/inputmethod/AutofillSuggestionsController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException calling onCreateInlineSuggestionsRequest(): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public performOnCreateInlineSuggestionsRequest()V
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    new-instance v7, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;

    iget-object v1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    iget-object v2, v1, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    iget-object v3, v1, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 130
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    move-result v4

    iget-object v1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 131
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;-><init>(Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 133
    iget-object v1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    iget-object v1, v1, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    invoke-virtual {v0, v1, v7}, Lcom/android/server/inputmethod/IInputMethodInvoker;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V

    goto :goto_0

    .line 136
    :cond_1
    sget-object v0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->TAG:Ljava/lang/String;

    const-string v1, "No IME connected! Abandoning inline suggestions creation request."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->clearPendingInlineSuggestionsRequest()V

    return-void
.end method
