.class public Lcom/android/server/am/UserController$Injector$2;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "UserController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController$Injector;

.field public final synthetic val$runOnce:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController$Injector;Ljava/lang/Runnable;)V
    .locals 0

    .line 4127
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    iput-object p2, p0, Lcom/android/server/am/UserController$Injector$2;->val$runOnce:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 1

    .line 4140
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    invoke-static {v0}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmHandler(Lcom/android/server/am/UserController$Injector;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$2;->val$runOnce:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDismissError()V
    .locals 1

    .line 4130
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    invoke-static {v0}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmHandler(Lcom/android/server/am/UserController$Injector;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$2;->val$runOnce:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDismissSucceeded()V
    .locals 1

    .line 4135
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    invoke-static {v0}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmHandler(Lcom/android/server/am/UserController$Injector;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$2;->val$runOnce:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
