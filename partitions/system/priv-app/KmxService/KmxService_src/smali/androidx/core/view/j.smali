.class public final synthetic Landroidx/core/view/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic a:Landroidx/core/view/l;

.field public final synthetic b:Landroidx/lifecycle/Lifecycle$State;

.field public final synthetic c:Landroidx/core/view/n;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/l;Landroidx/lifecycle/Lifecycle$State;Landroidx/core/view/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/j;->a:Landroidx/core/view/l;

    iput-object p2, p0, Landroidx/core/view/j;->b:Landroidx/lifecycle/Lifecycle$State;

    iput-object p3, p0, Landroidx/core/view/j;->c:Landroidx/core/view/n;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/z;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    iget-object p1, p0, Landroidx/core/view/j;->a:Landroidx/core/view/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/core/view/j;->b:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v0}, Landroidx/lifecycle/Lifecycle$Event;->upTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v1

    iget-object v2, p1, Landroidx/core/view/l;->a:Ljava/lang/Runnable;

    iget-object v3, p1, Landroidx/core/view/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Landroidx/core/view/j;->c:Landroidx/core/view/n;

    if-ne p2, v1, :cond_0

    invoke-virtual {v3, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/core/view/l;->c(Landroidx/core/view/n;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/lifecycle/Lifecycle$Event;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object p1

    if-ne p2, p1, :cond_2

    invoke-virtual {v3, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method
