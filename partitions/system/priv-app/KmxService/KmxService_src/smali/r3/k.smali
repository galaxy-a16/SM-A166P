.class public final Lr3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/n;
.implements Lr3/f;
.implements Lr3/e;
.implements Lr3/c;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lr3/b;

.field public final d:Lr3/o;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lr3/b;Lr3/o;I)V
    .locals 0

    iput p4, p0, Lr3/k;->a:I

    iput-object p1, p0, Lr3/k;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr3/k;->c:Lr3/b;

    iput-object p3, p0, Lr3/k;->d:Lr3/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lr3/k;->d:Lr3/o;

    invoke-virtual {p0}, Lr3/o;->k()V

    return-void
.end method

.method public final b(Lr3/h;)V
    .locals 3

    iget v0, p0, Lr3/k;->a:I

    iget-object v1, p0, Lr3/k;->b:Ljava/util/concurrent/Executor;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroidx/appcompat/widget/k;

    const/16 v2, 0x1d

    invoke-direct {v0, v2, p0, p1}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    new-instance v0, Lr3/l;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, p1}, Lr3/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lr3/k;->d:Lr3/o;

    invoke-virtual {p0, p1}, Lr3/o;->i(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lr3/k;->d:Lr3/o;

    invoke-virtual {p0, p1}, Lr3/o;->j(Ljava/lang/Object;)V

    return-void
.end method
