.class public final synthetic Landroidx/lifecycle/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/u0;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/q0;->a:Landroidx/lifecycle/u0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Landroidx/lifecycle/q0;->a:Landroidx/lifecycle/u0;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/u0;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/lifecycle/u0;->f:Landroidx/lifecycle/b0;

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/u0;->c:Z

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget v0, p0, Landroidx/lifecycle/u0;->a:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/u0;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    iput-boolean v1, p0, Landroidx/lifecycle/u0;->d:Z

    :cond_1
    return-void
.end method
