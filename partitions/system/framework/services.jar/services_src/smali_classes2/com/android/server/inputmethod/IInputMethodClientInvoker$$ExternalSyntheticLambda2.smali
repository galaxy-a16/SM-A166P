.class public final synthetic Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/InputBindResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iput-object p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/inputmethod/InputBindResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/inputmethod/InputBindResult;

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->$r8$lambda$4jg_5KPJdoB2zontjJvBk8Sjw6M(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;)V

    return-void
.end method
