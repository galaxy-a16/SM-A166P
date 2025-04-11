.class public final Landroidx/recyclerview/widget/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(ILh1/n;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/recyclerview/widget/f0;->b:I

    iput-object p2, p0, Landroidx/recyclerview/widget/f0;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/f0;->a:I

    iget v1, p0, Landroidx/recyclerview/widget/f0;->b:I

    iget-object p0, p0, Landroidx/recyclerview/widget/f0;->c:Landroidx/recyclerview/widget/RecyclerView;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    if-nez v0, :cond_1

    const-string p0, "SeslRecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance v2, Landroidx/recyclerview/widget/a0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Landroidx/recyclerview/widget/a0;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    iput v1, v2, Landroidx/recyclerview/widget/b0;->a:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/u0;->D0(Landroidx/recyclerview/widget/b0;)V

    const-string p0, "SeslLinearLayoutManager"

    const-string v0, "smoothScroller2"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/u0;->C0(Landroidx/recyclerview/widget/RecyclerView;I)V

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->E0(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
