.class public final synthetic Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iput p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;->f$1:I

    iget p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->$r8$lambda$0CD7vpLDv72GKbn2IRqDm4M66mc(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V

    return-void
.end method
