.class public final synthetic Landroidx/fragment/app/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/a2;

.field public final synthetic c:Landroidx/fragment/app/u1;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/a2;Landroidx/fragment/app/u1;I)V
    .locals 0

    iput p3, p0, Landroidx/fragment/app/t1;->a:I

    iput-object p1, p0, Landroidx/fragment/app/t1;->b:Landroidx/fragment/app/a2;

    iput-object p2, p0, Landroidx/fragment/app/t1;->c:Landroidx/fragment/app/u1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/fragment/app/t1;->a:I

    iget-object v1, p0, Landroidx/fragment/app/t1;->c:Landroidx/fragment/app/u1;

    const-string v2, "$operation"

    iget-object p0, p0, Landroidx/fragment/app/t1;->b:Landroidx/fragment/app/a2;

    const-string v3, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/a2;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v1, Landroidx/fragment/app/y1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    iget-object v0, v1, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const-string v1, "operation.fragment.mView"

    invoke-static {v0, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    :cond_0
    return-void

    :goto_0
    invoke-static {p0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/a2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/fragment/app/a2;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
