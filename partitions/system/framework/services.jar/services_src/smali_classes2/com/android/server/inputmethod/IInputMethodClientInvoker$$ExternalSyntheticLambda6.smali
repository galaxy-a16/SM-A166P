.class public final synthetic Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final synthetic f$1:I

.field public final synthetic f$2:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;I[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iput p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;->f$2:[F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget v1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;->f$1:I

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;->f$2:[F

    invoke-static {v0, v1, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->$r8$lambda$0X1EZs8fPTykfO6llODJPr3T3dc(Lcom/android/server/inputmethod/IInputMethodClientInvoker;I[F)V

    return-void
.end method
