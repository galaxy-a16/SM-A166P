.class public final Landroidx/lifecycle/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/lifecycle/t;

.field public final b:Landroidx/lifecycle/Lifecycle$State;

.field public final c:Landroidx/lifecycle/i;

.field public final d:Landroidx/core/view/i;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/t;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/i;Lkotlinx/coroutines/y0;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minState"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchQueue"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/t;

    iput-object p2, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/Lifecycle$State;

    iput-object p3, p0, Landroidx/lifecycle/u;->c:Landroidx/lifecycle/i;

    new-instance p2, Landroidx/core/view/i;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0, p4}, Landroidx/core/view/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/lifecycle/u;->d:Landroidx/core/view/i;

    move-object p3, p1

    check-cast p3, Landroidx/lifecycle/b0;

    iget-object p3, p3, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p3, v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p4, p1}, Lkotlinx/coroutines/y0;->a(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0}, Landroidx/lifecycle/u;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/y;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/t;

    iget-object v1, p0, Landroidx/lifecycle/u;->d:Landroidx/core/view/i;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/y;)V

    iget-object p0, p0, Landroidx/lifecycle/u;->c:Landroidx/lifecycle/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/i;->b:Z

    invoke-virtual {p0}, Landroidx/lifecycle/i;->d()V

    return-void
.end method
