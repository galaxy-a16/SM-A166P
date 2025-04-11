.class public final synthetic Landroidx/core/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/core/view/i;->a:I

    iput-object p2, p0, Landroidx/core/view/i;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/view/i;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/z;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget v0, p0, Landroidx/core/view/i;->a:I

    iget-object v1, p0, Landroidx/core/view/i;->c:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/core/view/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/core/view/l;

    check-cast v1, Landroidx/core/view/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/core/view/l;->c(Landroidx/core/view/n;)V

    :cond_0
    return-void

    :goto_0
    check-cast p0, Landroidx/lifecycle/u;

    check-cast v1, Lkotlinx/coroutines/y0;

    const-string p2, "this$0"

    invoke-static {p0, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$parentJob"

    invoke-static {v1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/b0;

    iget-object p2, p2, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p2, v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lkotlinx/coroutines/y0;->a(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0}, Landroidx/lifecycle/u;->a()V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/b0;

    iget-object p1, p1, Landroidx/lifecycle/b0;->c:Landroidx/lifecycle/Lifecycle$State;

    iget-object p2, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    const/4 p2, 0x1

    iget-object p0, p0, Landroidx/lifecycle/u;->c:Landroidx/lifecycle/i;

    if-gez p1, :cond_2

    iput-boolean p2, p0, Landroidx/lifecycle/i;->a:Z

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Landroidx/lifecycle/i;->a:Z

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Landroidx/lifecycle/i;->b:Z

    xor-int/2addr p1, p2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/i;->a:Z

    invoke-virtual {p0}, Landroidx/lifecycle/i;->d()V

    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot resume a finished dispatcher"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
