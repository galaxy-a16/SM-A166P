.class public Lcom/android/server/wm/AppTransition$1;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppTransition;

.field public final synthetic val$callback:Landroid/os/IRemoteCallback;


# direct methods
.method public static synthetic $r8$lambda$ovWj1GU-Dyl-6GvlYAUAdjIFGUA(Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->-$$Nest$smdoAnimationCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 1751
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$1;->this$0:Lcom/android/server/wm/AppTransition;

    iput-object p2, p0, Lcom/android/server/wm/AppTransition$1;->val$callback:Landroid/os/IRemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1757
    iget-object p1, p0, Lcom/android/server/wm/AppTransition$1;->this$0:Lcom/android/server/wm/AppTransition;

    iget-object p1, p1, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/AppTransition$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/AppTransition$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/AppTransition$1;->val$callback:Landroid/os/IRemoteCallback;

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 0
    return-void
.end method
