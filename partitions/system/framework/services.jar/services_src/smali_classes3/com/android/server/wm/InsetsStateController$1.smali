.class public Lcom/android/server/wm/InsetsStateController$1;
.super Ljava/lang/Object;
.source "InsetsStateController.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public static synthetic $r8$lambda$g9jop99seUO01YSOxSk08rHCh3w()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/wm/InsetsStateController$1;->lambda$notifyInsetsControlChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsStateController;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController$1;->this$0:Lcom/android/server/wm/InsetsStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$notifyInsetsControlChanged$0()V
    .locals 1

    .line 90
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->removeImeSurface()V

    return-void
.end method


# virtual methods
.method public notifyInsetsControlChanged()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController$1;->this$0:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 88
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController$1;->this$0:Lcom/android/server/wm/InsetsStateController;

    invoke-static {v3}, Lcom/android/server/wm/InsetsStateController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsStateController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v4, Lcom/android/server/wm/InsetsStateController$1$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/InsetsStateController$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
