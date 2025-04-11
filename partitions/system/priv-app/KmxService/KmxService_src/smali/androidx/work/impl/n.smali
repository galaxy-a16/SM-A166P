.class public final synthetic Landroidx/work/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/work/impl/n;->a:I

    iput-object p1, p0, Landroidx/work/impl/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/n;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/n;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/work/impl/n;->a:I

    iget-object v1, p0, Landroidx/work/impl/n;->d:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/impl/n;->c:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/work/impl/n;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/work/impl/p;

    check-cast v2, Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroidx/work/impl/p;->e:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->i()Lp1/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lp1/v;->j(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object p0

    invoke-virtual {p0, v1}, Lp1/s;->h(Ljava/lang/String;)Lp1/q;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p0, Lcom/google/firebase/concurrent/e;

    check-cast v2, Ljava/util/concurrent/Callable;

    check-cast v1, Ld/s0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ld/p0;

    const/16 v3, 0x14

    invoke-direct {v0, v3, v2, v1}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/firebase/concurrent/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
