.class public Lcom/android/server/wm/ActivityTaskManagerService$5;
.super Lcom/android/internal/policy/KeyguardDismissCallback;
.source "ActivityTaskManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic val$enterPipRunnable:Ljava/lang/Runnable;

.field public final synthetic val$transition:Lcom/android/server/wm/Transition;


# direct methods
.method public static synthetic $r8$lambda$t2YML1-M8X3GH-gQEYX0RXQV-E4(Lcom/android/server/wm/ActivityTaskManagerService$5;Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$5;->lambda$onDismissSucceeded$0(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/Transition;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->val$transition:Lcom/android/server/wm/Transition;

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->val$enterPipRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/KeyguardDismissCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDismissSucceeded$0(Ljava/lang/Runnable;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->val$transition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->val$enterPipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->val$transition:Lcom/android/server/wm/Transition;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->val$enterPipRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$5$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$5;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z

    return-void
.end method
