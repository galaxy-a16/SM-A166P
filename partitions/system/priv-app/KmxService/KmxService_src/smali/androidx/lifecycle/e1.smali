.class public final Landroidx/lifecycle/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/b0;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/e1;->a:I

    const-string v0, "registry"

    .line 1
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/e1;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/e1;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/lifecycle/e1;->a:I

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/e1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/e1;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/lifecycle/e1;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/lifecycle/e1;->a:I

    iget-object v1, p0, Landroidx/lifecycle/e1;->d:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/lifecycle/e1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Landroidx/lifecycle/e1;->b:Z

    if-nez v0, :cond_0

    check-cast v2, Landroidx/lifecycle/b0;

    check-cast v1, Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/e1;->b:Z

    :cond_0
    return-void

    :goto_0
    check-cast v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Li0/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li0/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast v2, Landroid/view/View;

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2, p0}, Landroidx/core/view/i0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
