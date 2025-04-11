.class public Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;
.super Ljava/lang/Object;
.source "ImeVisibilityStateComputer.java"

# interfaces
.implements Lcom/android/server/wm/ImeTargetChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;->this$0:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;->this$0:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->-$$Nest$fgetmCurVisibleImeInputTarget(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;->this$0:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->-$$Nest$fgetmCurVisibleImeLayeringOverlay(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;->this$0:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/4 v2, 0x5

    const/16 v3, 0x25

    invoke-direct {v1, v2, v3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onApplyImeVisibilityFromComputer(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;->this$0:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->-$$Nest$fputmCurVisibleImeInputTarget(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;Landroid/os/IBinder;)V

    return-void
.end method

.method public onImeTargetOverlayVisibilityChanged(Landroid/os/IBinder;IZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;->this$0:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->-$$Nest$fputmCurVisibleImeLayeringOverlay(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;Landroid/os/IBinder;)V

    return-void
.end method
