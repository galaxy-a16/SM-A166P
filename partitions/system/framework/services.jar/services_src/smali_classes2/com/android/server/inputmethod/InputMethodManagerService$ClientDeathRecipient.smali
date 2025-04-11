.class public final Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mClient:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 578
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeClient(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method
