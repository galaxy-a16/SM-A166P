.class public final Landroidx/lifecycle/t0;
.super Landroidx/lifecycle/k;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/u0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/u0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/t0;->this$0:Landroidx/lifecycle/u0;

    invoke-direct {p0}, Landroidx/lifecycle/k;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/t0;->this$0:Landroidx/lifecycle/u0;

    iget p1, p0, Landroidx/lifecycle/u0;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/u0;->b:I

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/u0;->e:Landroid/os/Handler;

    invoke-static {p1}, Li4/f;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/u0;->g:Landroidx/lifecycle/q0;

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroidx/lifecycle/s0;

    iget-object p0, p0, Landroidx/lifecycle/t0;->this$0:Landroidx/lifecycle/u0;

    invoke-direct {p2, p0}, Landroidx/lifecycle/s0;-><init>(Landroidx/lifecycle/u0;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/r0;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/t0;->this$0:Landroidx/lifecycle/u0;

    iget p1, p0, Landroidx/lifecycle/u0;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/u0;->a:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/u0;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/u0;->f:Landroidx/lifecycle/b0;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/u0;->d:Z

    :cond_0
    return-void
.end method
