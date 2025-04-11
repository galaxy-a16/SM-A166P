.class public final synthetic Landroidx/work/impl/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Landroidx/work/impl/e0;->a:I

    iput-object p1, p0, Landroidx/work/impl/e0;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/e0;->c:Ljava/io/Serializable;

    iput-object p3, p0, Landroidx/work/impl/e0;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/impl/e0;->e:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/work/impl/e0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget v2, v0, Landroidx/work/impl/e0;->a:I

    iget-object v3, v0, Landroidx/work/impl/e0;->f:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/work/impl/e0;->e:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/work/impl/e0;->d:Ljava/lang/Object;

    iget-object v6, v0, Landroidx/work/impl/e0;->c:Ljava/io/Serializable;

    iget-object v0, v0, Landroidx/work/impl/e0;->b:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;

    check-cast v6, Ljava/lang/Throwable;

    check-cast v5, Ljava/util/function/BiConsumer;

    check-cast v4, Ljava/lang/Boolean;

    check-cast v3, Ljava/util/function/Consumer;

    sget-object v2, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->e:Lv5/a;

    iget-object v2, v0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->e:Lv5/a;

    if-eqz v6, :cond_1

    const-string v1, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {v2, v1, v6}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v5, v0, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    const-string v1, "Auth cancelled. Unexpected null result returned by auth mechanism."

    invoke-interface {v2, v1}, Lv5/a;->error(Ljava/lang/String;)V

    iget-object v0, v0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Result returned by auth mechanism must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v0, v0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-nez v2, :cond_3

    :goto_0
    invoke-interface {v5, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-interface {v3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_1
    check-cast v0, Landroidx/work/impl/d0;

    check-cast v6, Ljava/lang/String;

    check-cast v5, Landroidx/work/impl/m;

    check-cast v4, Lvb/a;

    check-cast v3, Landroidx/work/z;

    const-string v2, "$this_enqueueUniquelyNamedPeriodic"

    invoke-static {v0, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$name"

    invoke-static {v6, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$operation"

    invoke-static {v5, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$enqueueNew"

    invoke-static {v4, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$workRequest"

    invoke-static {v3, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v2

    invoke-virtual {v2, v6}, Lp1/s;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    const-string v0, "Can\'t apply UPDATE policy to the chains of work."

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    check-cast v1, Lp1/p;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v7, v1, Lp1/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lp1/s;->h(Ljava/lang/String;)Lp1/q;

    move-result-object v8

    if-nez v8, :cond_7

    new-instance v0, Landroidx/work/r;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WorkSpec with "

    const-string v3, ", that matches a name \""

    const-string v4, "\", wasn\'t found"

    invoke-static {v2, v7, v3, v6, v4}, Landroidx/activity/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/work/r;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v5, v0}, Landroidx/work/impl/m;->a(Lcom/fasterxml/jackson/annotation/i0;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v8}, Lp1/q;->d()Z

    move-result v6

    if-nez v6, :cond_8

    const-string v0, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    :goto_3
    new-instance v1, Landroidx/work/r;

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroidx/work/r;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v5, v1}, Landroidx/work/impl/m;->a(Lcom/fasterxml/jackson/annotation/i0;)V

    goto :goto_5

    :cond_8
    iget-object v6, v1, Lp1/p;->b:Landroidx/work/WorkInfo$State;

    sget-object v8, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v6, v8, :cond_9

    invoke-virtual {v2, v7}, Lp1/s;->a(Ljava/lang/String;)V

    :goto_4
    invoke-interface {v4}, Lvb/a;->invoke()Ljava/lang/Object;

    goto :goto_5

    :cond_9
    iget-object v9, v3, Landroidx/work/z;->b:Lp1/q;

    iget-object v10, v1, Lp1/p;->a:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const v18, 0xffffe

    invoke-static/range {v9 .. v18}, Lp1/q;->b(Lp1/q;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/f;IJII)Lp1/q;

    move-result-object v23

    :try_start_0
    iget-object v1, v0, Landroidx/work/impl/d0;->u:Landroidx/work/impl/p;

    const-string v2, "processor"

    invoke-static {v1, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    const-string v4, "workDatabase"

    invoke-static {v2, v4}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Landroidx/work/impl/d0;->q:Landroidx/work/b;

    const-string v6, "configuration"

    invoke-static {v4, v6}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/work/impl/d0;->t:Ljava/util/List;

    const-string v6, "schedulers"

    invoke-static {v0, v6}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Landroidx/work/z;->c:Ljava/util/Set;

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v0

    move-object/from16 v24, v3

    invoke-static/range {v19 .. v24}, Landroidx/work/impl/g0;->b(Landroidx/work/impl/p;Landroidx/work/impl/WorkDatabase;Landroidx/work/b;Ljava/util/List;Lp1/q;Ljava/util/Set;)V

    sget-object v0, Landroidx/work/u;->a:Landroidx/work/t;

    invoke-virtual {v5, v0}, Landroidx/work/impl/m;->a(Lcom/fasterxml/jackson/annotation/i0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    new-instance v1, Landroidx/work/r;

    invoke-direct {v1, v0}, Landroidx/work/r;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v5, v1}, Landroidx/work/impl/m;->a(Lcom/fasterxml/jackson/annotation/i0;)V

    :goto_5
    return-void

    :goto_6
    check-cast v0, Lw5/h;

    move-object v8, v6

    check-cast v8, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    move-object v9, v5

    check-cast v9, Lx6/a;

    move-object v10, v4

    check-cast v10, Li6/b;

    move-object v11, v3

    check-cast v11, Lio/netty/channel/EventLoop;

    sget-object v1, Li6/d;->c:Lv5/a;

    sget-object v7, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Li6/d;->e(Lw5/h;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lx6/a;Li6/b;Lio/netty/channel/EventLoop;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
