.class public final synthetic Lj1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj1/g;


# direct methods
.method public synthetic constructor <init>(Lj1/g;I)V
    .locals 0

    iput p2, p0, Lj1/f;->a:I

    iput-object p1, p0, Lj1/f;->b:Lj1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lj1/f;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lj1/f;->b:Lj1/g;

    iget v0, p0, Lj1/g;->g:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lj1/g;->g:I

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    sget-object v1, Lj1/g;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAllConstraintsMet for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lj1/g;->c:Lp1/j;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj1/g;->d:Lj1/j;

    iget-object v0, v0, Lj1/j;->d:Landroidx/work/impl/p;

    iget-object v1, p0, Lj1/g;->l:Landroidx/work/impl/t;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/p;->g(Landroidx/work/impl/t;Lva/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj1/g;->d:Lj1/j;

    iget-object v0, v0, Lj1/j;->c:Lq1/v;

    iget-object v1, p0, Lj1/g;->c:Lp1/j;

    const-string v2, "Starting timer for "

    iget-object v3, v0, Lq1/v;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v4

    sget-object v5, Lq1/v;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lq1/v;->a(Lp1/j;)V

    new-instance v2, Lq1/u;

    invoke-direct {v2, v0, v1}, Lq1/u;-><init>(Lq1/v;Lp1/j;)V

    iget-object v4, v0, Lq1/v;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lq1/v;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lq1/v;->a:Lf9/b;

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-virtual {p0}, Lj1/g;->c()V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    sget-object v1, Lj1/g;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already started work for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lj1/g;->c:Lp1/j;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :goto_1
    :pswitch_1
    iget-object p0, p0, Lj1/f;->b:Lj1/g;

    invoke-static {p0}, Lj1/g;->a(Lj1/g;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
