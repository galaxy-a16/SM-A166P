.class public final synthetic Landroidx/emoji2/text/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/emoji2/text/n;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/emoji2/text/n;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/emoji2/text/n;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1b

    :pswitch_1
    iget-object v1, v0, Landroidx/emoji2/text/n;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    iget-object v2, v0, Landroidx/emoji2/text/n;->c:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;

    iget-object v0, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->c(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;Landroid/content/Context;)V

    return-void

    :pswitch_2
    iget-object v1, v0, Landroidx/emoji2/text/n;->b:Ljava/lang/Object;

    check-cast v1, Lo6/e;

    iget-object v4, v0, Landroidx/emoji2/text/n;->c:Ljava/lang/Object;

    check-cast v4, Lo6/a;

    iget-object v0, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    check-cast v0, Lo7/b;

    sget-object v5, Lo6/e;->l:Lv5/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lh/e;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v3, v4, Lh/e;->a:Ljava/lang/Object;

    check-cast v3, Lw5/h;

    invoke-virtual {v3}, Lw5/h;->c()V

    :goto_0
    if-eqz v2, :cond_1

    new-instance v2, Lo6/g;

    invoke-direct {v2, v4, v0}, Lo6/g;-><init>(Lo6/a;Lo7/b;)V

    iget-object v0, v1, Lo6/e;->e:Lv7/w;

    invoke-virtual {v0, v2}, Lv7/w;->a(Ld/g0;)V

    iget-object v0, v1, Lo6/e;->i:Lo6/b;

    if-nez v0, :cond_1

    iput-object v2, v1, Lo6/e;->i:Lo6/b;

    invoke-virtual {v1}, Lo6/e;->run()V

    :cond_1
    return-void

    :pswitch_3
    iget-object v1, v0, Landroidx/emoji2/text/n;->b:Ljava/lang/Object;

    check-cast v1, Lo6/e;

    iget-object v5, v0, Landroidx/emoji2/text/n;->c:Ljava/lang/Object;

    check-cast v5, Lo6/d;

    iget-object v0, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    check-cast v0, Ll7/b;

    sget-object v6, Lo6/e;->l:Lv5/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v5

    check-cast v6, Lh/e;

    iget-object v7, v6, Lh/e;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lh/e;->a:Ljava/lang/Object;

    check-cast v6, Lw5/h;

    invoke-virtual {v6}, Lw5/h;->c()V

    move v6, v2

    :goto_1
    if-eqz v6, :cond_21

    iget v6, v1, Lo6/e;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v1, Lo6/e;->g:I

    instance-of v7, v5, Ll6/h;

    if-eqz v7, :cond_3

    move-object v7, v5

    check-cast v7, Ll6/h;

    goto :goto_2

    :cond_3
    move-object v7, v4

    :goto_2
    iget-object v8, v1, Lo6/e;->d:Ll6/b;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Ll7/b;->c:Lv7/t;

    move v10, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_20

    invoke-interface {v9, v10}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ll7/c;

    iget-object v12, v8, Ll6/b;->a:Ll6/l;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Ll6/j;

    invoke-direct {v13, v11, v6, v7}, Ll6/j;-><init>(Ll7/c;ILl6/h;)V

    iget-object v11, v11, Ll7/c;->c:Lf6/c;

    invoke-static {v11}, Lf6/e;->h(Lf6/c;)Lf6/e;

    move-result-object v11

    iget-object v14, v12, Ll6/l;->a:Ljava/lang/Object;

    check-cast v14, Ll6/k;

    if-nez v14, :cond_4

    new-instance v14, Ll6/k;

    invoke-direct {v14, v4, v4}, Ll6/k;-><init>(Ll6/k;Lf6/f;)V

    iput-object v14, v12, Ll6/l;->a:Ljava/lang/Object;

    :cond_4
    :goto_4
    if-eqz v14, :cond_1f

    invoke-virtual {v11}, Lf6/e;->f()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v11}, Lf6/e;->g()V

    invoke-virtual {v11}, Lf6/f;->c()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v14, Ll6/k;->d:Ll6/k;

    if-nez v12, :cond_7

    new-instance v12, Ll6/k;

    invoke-virtual {v11}, Lf6/e;->e()Lf6/f;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Ll6/k;-><init>(Ll6/k;Lf6/f;)V

    iput-object v12, v14, Ll6/k;->d:Ll6/k;

    :goto_5
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object v14, v12

    move v7, v2

    goto/16 :goto_16

    :cond_5
    iget-object v12, v14, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    if-nez v12, :cond_6

    new-instance v12, Lcom/fasterxml/jackson/databind/deser/j;

    sget-object v15, Ll6/k;->g:Landroidx/recyclerview/widget/s0;

    invoke-direct {v12, v15}, Lcom/fasterxml/jackson/databind/deser/j;-><init>(Landroidx/recyclerview/widget/s0;)V

    iput-object v12, v14, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    move-object v12, v4

    goto :goto_6

    :cond_6
    invoke-virtual {v12, v11}, Lcom/fasterxml/jackson/databind/deser/j;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ll6/k;

    :goto_6
    if-nez v12, :cond_7

    new-instance v12, Ll6/k;

    invoke-virtual {v11}, Lf6/e;->e()Lf6/f;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Ll6/k;-><init>(Ll6/k;Lf6/f;)V

    iget-object v14, v14, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {v14, v12}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    iget-object v15, v12, Ll6/k;->b:Lf6/f;

    instance-of v3, v15, Lf6/g;

    if-eqz v3, :cond_18

    check-cast v15, Lf6/g;

    invoke-virtual {v11}, Lf6/e;->f()Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, v15, Lf6/g;->c:I

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    goto/16 :goto_e

    :cond_8
    iget v3, v11, Lf6/e;->d:I

    iget v2, v15, Lf6/g;->c:I

    add-int/lit8 v16, v3, 0x1

    add-int/lit8 v17, v2, 0x1

    move/from16 v4, v16

    move/from16 v16, v2

    move/from16 v2, v17

    move/from16 v17, v3

    :goto_7
    iget v3, v11, Lf6/e;->e:I

    move-object/from16 v18, v7

    if-ne v4, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    :goto_8
    iget-object v7, v15, Lu7/a;->a:[B

    move-object/from16 v19, v8

    array-length v8, v7

    move-object/from16 v20, v9

    if-ne v2, v8, :cond_a

    const/4 v8, 0x1

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    iget-object v9, v11, Lu7/a;->a:[B

    if-nez v8, :cond_d

    if-eqz v3, :cond_b

    goto :goto_a

    :cond_b
    aget-byte v3, v7, v2

    aget-byte v7, v9, v4

    if-ne v7, v3, :cond_f

    const/16 v7, 0x2f

    if-ne v3, v7, :cond_c

    move/from16 v16, v2

    move/from16 v17, v4

    :cond_c
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    goto :goto_7

    :cond_d
    :goto_a
    if-nez v8, :cond_e

    aget-byte v7, v7, v2

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_f

    goto :goto_b

    :cond_e
    const/16 v8, 0x2f

    :goto_b
    if-nez v3, :cond_10

    aget-byte v3, v9, v4

    if-ne v3, v8, :cond_f

    goto :goto_c

    :cond_f
    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_d

    :cond_10
    :goto_c
    move v3, v4

    :goto_d
    iput v3, v11, Lf6/e;->d:I

    iput v3, v11, Lf6/e;->c:I

    move v3, v2

    :goto_e
    iget-object v2, v15, Lu7/a;->a:[B

    array-length v4, v2

    if-ne v3, v4, :cond_11

    move-object v4, v15

    const/4 v7, 0x0

    goto :goto_f

    :cond_11
    iget v4, v15, Lf6/g;->c:I

    const/4 v7, 0x0

    if-ne v3, v4, :cond_12

    invoke-static {v7, v4, v2}, Lf6/f;->d(II[B)Lf6/f;

    move-result-object v4

    goto :goto_f

    :cond_12
    new-instance v8, Lf6/g;

    invoke-static {v2, v7, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lf6/g;-><init>([BI)V

    move-object v4, v8

    :goto_f
    if-eq v4, v15, :cond_19

    add-int/lit8 v3, v3, 0x1

    move v8, v3

    :goto_10
    array-length v9, v2

    if-ge v8, v9, :cond_14

    aget-byte v9, v2, v8

    const/16 v15, 0x2f

    if-ne v9, v15, :cond_13

    goto :goto_11

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_14
    array-length v8, v2

    :goto_11
    array-length v9, v2

    if-ne v8, v9, :cond_15

    array-length v8, v2

    invoke-static {v3, v8, v2}, Lf6/f;->d(II[B)Lf6/f;

    move-result-object v2

    goto :goto_12

    :cond_15
    new-instance v9, Lf6/g;

    array-length v15, v2

    invoke-static {v2, v3, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    sub-int/2addr v8, v3

    invoke-direct {v9, v2, v8}, Lf6/g;-><init>([BI)V

    move-object v2, v9

    :goto_12
    new-instance v3, Ll6/k;

    invoke-direct {v3, v14, v4}, Ll6/k;-><init>(Ll6/k;Lf6/f;)V

    invoke-virtual {v4}, Lf6/f;->c()Z

    move-result v4

    if-eqz v4, :cond_16

    iput-object v3, v14, Ll6/k;->d:Ll6/k;

    goto :goto_13

    :cond_16
    iget-object v4, v14, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    iput-object v3, v12, Ll6/k;->a:Ll6/k;

    iput-object v2, v12, Ll6/k;->b:Lf6/f;

    invoke-virtual {v2}, Lf6/f;->c()Z

    move-result v2

    if-eqz v2, :cond_17

    iput-object v12, v3, Ll6/k;->d:Ll6/k;

    goto :goto_14

    :cond_17
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/j;

    sget-object v4, Ll6/k;->g:Landroidx/recyclerview/widget/s0;

    invoke-direct {v2, v4}, Lcom/fasterxml/jackson/databind/deser/j;-><init>(Landroidx/recyclerview/widget/s0;)V

    iput-object v2, v3, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {v2, v12}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    move-object v12, v3

    goto :goto_15

    :cond_18
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move v7, v2

    :cond_19
    :goto_15
    move-object v14, v12

    :goto_16
    move v2, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move v7, v2

    iget-object v2, v11, Lu7/a;->a:[B

    array-length v2, v2

    iget v3, v11, Lf6/e;->e:I

    if-eq v3, v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_17

    :cond_1b
    move v2, v7

    :goto_17
    if-eqz v2, :cond_1d

    iget-object v2, v14, Ll6/k;->f:Lv7/w;

    if-nez v2, :cond_1c

    new-instance v2, Lv7/w;

    invoke-direct {v2}, Lv7/w;-><init>()V

    iput-object v2, v14, Ll6/k;->f:Lv7/w;

    :cond_1c
    iget-object v2, v14, Ll6/k;->f:Lv7/w;

    goto :goto_18

    :cond_1d
    iget-object v2, v14, Ll6/k;->e:Lv7/w;

    if-nez v2, :cond_1e

    new-instance v2, Lv7/w;

    invoke-direct {v2}, Lv7/w;-><init>()V

    iput-object v2, v14, Ll6/k;->e:Lv7/w;

    :cond_1e
    iget-object v2, v14, Ll6/k;->e:Lv7/w;

    :goto_18
    invoke-virtual {v2, v13}, Lv7/w;->a(Ld/g0;)V

    move v2, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move v7, v2

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v18

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_20
    new-instance v2, Lo6/c;

    invoke-direct {v2, v0, v6, v5}, Lo6/c;-><init>(Ll7/b;ILo6/d;)V

    iget-object v0, v1, Lo6/e;->e:Lv7/w;

    invoke-virtual {v0, v2}, Lv7/w;->a(Ld/g0;)V

    iget-object v0, v1, Lo6/e;->i:Lo6/b;

    if-nez v0, :cond_21

    iput-object v2, v1, Lo6/e;->i:Lo6/b;

    invoke-virtual {v1}, Lo6/e;->run()V

    :cond_21
    return-void

    :pswitch_4
    iget-object v1, v0, Landroidx/emoji2/text/n;->b:Ljava/lang/Object;

    check-cast v1, Lj6/g;

    iget-object v2, v0, Landroidx/emoji2/text/n;->c:Ljava/lang/Object;

    check-cast v2, Lb7/a;

    iget-object v0, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    check-cast v0, Ls7/a;

    sget-object v3, Lj6/g;->e:Lv5/a;

    iget-object v3, v1, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v3, :cond_22

    iget-object v4, v1, Lj6/g;->d:Ljava/lang/Object;

    if-nez v4, :cond_22

    sget-object v4, Lj6/g;->f:Ljava/lang/Object;

    iput-object v4, v1, Lj6/g;->d:Ljava/lang/Object;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    new-instance v3, Lj6/b;

    invoke-direct {v3, v2, v0}, Lj6/b;-><init>(Lb7/a;Ls7/a;)V

    invoke-interface {v1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, v3}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_19

    :cond_22
    invoke-static {}, Lv9/a;->E()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v1

    iget-object v0, v0, Ls7/a;->a:Leb/b;

    invoke-interface {v0, v1}, Leb/b;->onError(Ljava/lang/Throwable;)V

    :goto_19
    return-void

    :pswitch_5
    iget-object v1, v0, Landroidx/emoji2/text/n;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/messaging/g;

    iget-object v2, v0, Landroidx/emoji2/text/n;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object v0, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lr3/i;

    sget v0, Lcom/google/firebase/messaging/g;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/g;->handleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lr3/i;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    invoke-virtual {v3, v1}, Lr3/i;->a(Ljava/lang/Object;)V

    throw v2

    :pswitch_6
    iget-object v1, v0, Landroidx/emoji2/text/n;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/m;

    iget-object v2, v0, Landroidx/emoji2/text/n;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v0, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h;

    const-string v3, "this$0"

    invoke-static {v1, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$animationInfo"

    invoke-static {v0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/fragment/app/a2;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()V

    return-void

    :pswitch_7
    iget-object v1, v0, Landroidx/emoji2/text/n;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/r1;

    iget-object v2, v0, Landroidx/emoji2/text/n;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v0, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    const-string v3, "$impl"

    invoke-static {v1, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$lastInEpicenterRect"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroidx/fragment/app/r1;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :pswitch_8
    iget-object v1, v0, Landroidx/emoji2/text/n;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Landroidx/emoji2/text/n;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/y1;

    iget-object v0, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/m;

    const-string v3, "$awaitingContainerChanges"

    invoke-static {v1, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$operation"

    invoke-static {v2, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {v0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v2}, Landroidx/fragment/app/m;->m(Landroidx/fragment/app/y1;)V

    :cond_23
    return-void

    :pswitch_9
    iget-object v1, v0, Landroidx/emoji2/text/n;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/p;

    iget-object v2, v0, Landroidx/emoji2/text/n;->c:Ljava/lang/Object;

    check-cast v2, Lv4/b;

    iget-object v0, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, v1, Landroidx/emoji2/text/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lv9/a;->m(Landroid/content/Context;)Landroidx/emoji2/text/m;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, v0, Landroidx/emoji2/text/h;->a:Landroidx/emoji2/text/k;

    check-cast v1, Landroidx/emoji2/text/v;

    iget-object v4, v1, Landroidx/emoji2/text/v;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iput-object v3, v1, Landroidx/emoji2/text/v;->f:Ljava/util/concurrent/Executor;

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v0, Landroidx/emoji2/text/h;->a:Landroidx/emoji2/text/k;

    new-instance v1, Landroidx/emoji2/text/o;

    invoke-direct {v1, v2, v3}, Landroidx/emoji2/text/o;-><init>(Lv4/b;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v1}, Landroidx/emoji2/text/k;->a(Lv4/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1a

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {v2, v0}, Lv4/b;->R(Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_1a
    return-void

    :goto_1b
    iget-object v1, v0, Landroidx/emoji2/text/n;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;

    iget-object v2, v0, Landroidx/emoji2/text/n;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v0, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->L(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
