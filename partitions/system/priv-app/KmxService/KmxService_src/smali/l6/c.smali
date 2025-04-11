.class public final Ll6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Lv5/a;


# instance fields
.field public final a:Ll6/f;

.field public final b:Ll6/b;

.field public final c:Lv7/b;

.field public final d:Lv7/a;

.field public final e:Lv7/b;

.field public final f:Lv7/a;

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Ll6/c;

    invoke-static {v0}, Lv5/b;->a(Ljava/lang/Class;)Lv5/a;

    move-result-object v0

    sput-object v0, Ll6/c;->j:Lv5/a;

    return-void
.end method

.method public constructor <init>(Ll6/f;Ll6/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv7/b;

    invoke-direct {v0}, Lv7/b;-><init>()V

    iput-object v0, p0, Ll6/c;->c:Lv7/b;

    new-instance v1, Lv7/a;

    invoke-direct {v1, v0}, Lv7/a;-><init>(Lv7/b;)V

    iput-object v1, p0, Ll6/c;->d:Lv7/a;

    new-instance v0, Lv7/b;

    invoke-direct {v0}, Lv7/b;-><init>()V

    iput-object v0, p0, Ll6/c;->e:Lv7/b;

    new-instance v1, Lv7/a;

    invoke-direct {v1, v0}, Lv7/a;-><init>(Lv7/b;)V

    iput-object v1, p0, Ll6/c;->f:Lv7/a;

    iput-object p1, p0, Ll6/c;->a:Ll6/f;

    iput-object p2, p0, Ll6/c;->b:Ll6/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Ll6/c;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ll6/c;->h:I

    const/4 v0, 0x0

    iput v0, p0, Ll6/c;->i:I

    iget-object v2, p0, Ll6/c;->f:Lv7/a;

    invoke-virtual {v2}, Lv7/a;->a()V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lv7/a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lv7/a;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll6/g;

    invoke-virtual {p0, v3}, Ll6/c;->b(Ll6/g;)V

    iget v4, v2, Lv7/a;->c:I

    if-ne v4, v1, :cond_2

    invoke-virtual {v3}, Lv7/w;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Ll6/g;->f:I

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lv7/a;->remove()V

    iget-object v4, p0, Ll6/c;->a:Ll6/f;

    invoke-virtual {v4, v3}, Ll6/f;->b(Ll6/g;)V

    goto :goto_0

    :cond_2
    iget v3, p0, Ll6/c;->i:I

    iget v4, p0, Ll6/c;->g:I

    if-ne v3, v4, :cond_0

    return-void

    :cond_3
    iget-object v0, p0, Ll6/c;->d:Lv7/a;

    invoke-virtual {v0}, Lv7/a;->a()V

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lv7/a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lv7/a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll6/g;

    invoke-virtual {p0, v2}, Ll6/c;->b(Ll6/g;)V

    iget v3, v0, Lv7/a;->c:I

    if-ne v3, v1, :cond_5

    invoke-virtual {v2}, Lv7/w;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lv7/a;->remove()V

    goto :goto_2

    :cond_5
    iget v2, p0, Ll6/c;->i:I

    iget v3, p0, Ll6/c;->g:I

    if-ne v2, v3, :cond_4

    :cond_6
    return-void
.end method

.method public final b(Ll6/g;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lv7/w;->a:Ld/g0;

    :goto_0
    check-cast v2, Lv7/c;

    if-eqz v2, :cond_b

    iget-object v3, v2, Lv7/c;->c:Ljava/lang/Object;

    check-cast v3, Ll6/a;

    invoke-virtual {v3}, Lh/e;->s()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Lv7/w;->c(Ld/g0;)V

    iget v4, v3, Ll6/a;->l:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Ll6/a;->l:I

    if-nez v4, :cond_a

    iget v3, v0, Ll6/c;->g:I

    sub-int/2addr v3, v5

    iput v3, v0, Ll6/c;->g:I

    goto/16 :goto_3

    :cond_0
    iget v4, v0, Ll6/c;->h:I

    int-to-long v6, v4

    iget-wide v8, v3, Ll6/a;->g:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    const/4 v12, 0x0

    if-gtz v4, :cond_4

    iget-boolean v4, v3, Ll6/a;->p:Z

    if-eqz v4, :cond_1

    iget-wide v8, v3, Ll6/a;->n:J

    cmp-long v4, v8, v6

    if-eqz v4, :cond_1

    iput-boolean v12, v3, Ll6/a;->p:Z

    :cond_1
    iget-boolean v4, v3, Ll6/a;->p:Z

    if-eqz v4, :cond_2

    const-wide/16 v8, -0x1

    goto :goto_1

    :cond_2
    iget-object v4, v3, Ll6/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v8, 0x2

    invoke-virtual {v4, v12, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v8

    if-eqz v8, :cond_3

    iput-wide v6, v3, Ll6/a;->n:J

    iput-boolean v5, v3, Ll6/a;->p:Z

    move-wide v8, v10

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, v3, Ll6/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-lez v4, :cond_2

    iget-wide v6, v3, Ll6/a;->g:J

    invoke-static {v6, v7, v8, v9}, Lh3/a;->e(JJ)J

    move-result-wide v8

    iput-wide v8, v3, Ll6/a;->g:J

    :cond_4
    :goto_1
    cmp-long v4, v8, v10

    if-lez v4, :cond_9

    iget-object v4, v1, Ll6/g;->c:Le7/b;

    iget-object v4, v4, Lu6/j;->b:Lu6/h;

    check-cast v4, Le7/a;

    iget-boolean v6, v3, Ll6/a;->f:Z

    if-eqz v6, :cond_6

    iget-object v6, v4, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sget-object v7, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v6, v7, :cond_5

    new-instance v6, Lf9/b;

    const/16 v7, 0x1a

    invoke-direct {v6, v7}, Lf9/b;-><init>(I)V

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    :goto_2
    new-instance v6, Le7/a;

    iget-object v14, v4, Le7/a;->c:Lf6/d;

    iget-object v15, v4, Le7/a;->d:Ljava/nio/ByteBuffer;

    iget-object v7, v4, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-boolean v8, v4, Le7/a;->f:Z

    iget-wide v9, v4, Le7/a;->g:J

    iget-object v11, v4, Le7/a;->h:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iget-object v12, v4, Le7/a;->i:Lf6/j;

    iget-object v13, v4, Le7/a;->j:Lf6/d;

    iget-object v5, v4, Le7/a;->k:Ljava/nio/ByteBuffer;

    iget-object v4, v4, Lu6/h;->b:Lf6/h;

    move-object/from16 v22, v13

    move-object v13, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    move-wide/from16 v18, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v23, v5

    move-object/from16 v24, v4

    invoke-direct/range {v13 .. v24}, Le7/a;-><init>(Lf6/d;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lf6/j;Lf6/d;Ljava/nio/ByteBuffer;Lf6/h;)V

    move-object v4, v6

    :cond_6
    iget-object v5, v3, Ll6/a;->d:Lvc/c;

    invoke-interface {v5, v4}, Lvc/c;->onNext(Ljava/lang/Object;)V

    iget-wide v6, v3, Ll6/a;->g:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v6, v8

    if-eqz v4, :cond_7

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v3, Ll6/a;->g:J

    :cond_7
    invoke-virtual {v1, v2}, Lv7/w;->c(Ld/g0;)V

    iget v4, v3, Ll6/a;->l:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Ll6/a;->l:I

    if-nez v4, :cond_a

    iget v4, v0, Ll6/c;->g:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    iput v4, v0, Ll6/c;->g:I

    iget-boolean v4, v3, Ll6/a;->j:Z

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Ll6/a;->x()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v3, v3, Ll6/a;->k:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    invoke-interface {v5, v3}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-interface {v5}, Lvc/c;->onComplete()V

    goto :goto_3

    :cond_9
    if-nez v4, :cond_a

    iget v3, v0, Ll6/c;->i:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Ll6/c;->i:I

    iget v4, v0, Ll6/c;->g:I

    if-ne v3, v4, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    iget-object v2, v2, Ld/g0;->b:Ljava/lang/Object;

    check-cast v2, Ld/g0;

    goto/16 :goto_0

    :cond_b
    :goto_4
    return-void
.end method

.method public final c(Ll6/g;)V
    .locals 7

    iget-object v0, p0, Ll6/c;->b:Ll6/b;

    iget-object v1, v0, Ll6/b;->a:Ll6/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Ll6/g;->c:Le7/b;

    iget-object v3, v2, Lu6/j;->b:Lu6/h;

    check-cast v3, Le7/a;

    iget-object v3, v3, Le7/a;->c:Lf6/d;

    invoke-virtual {v3}, Lf6/j;->g()[B

    move-result-object v3

    new-instance v4, Lf6/e;

    array-length v5, v3

    const/4 v6, -0x1

    invoke-direct {v4, v3, v6, v6, v5}, Lf6/e;-><init>([BIII)V

    iget-object v1, v1, Ll6/l;->a:Ljava/lang/Object;

    check-cast v1, Ll6/k;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4, p1}, Ll6/k;->c(Lf6/e;Ll6/g;)Ll6/k;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-boolean v1, p1, Ll6/g;->e:Z

    iget-object v0, v0, Ll6/b;->b:[Lv7/d;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->SUBSCRIBED:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, v0, v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->UNSOLICITED:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, v0, v1

    :goto_1
    invoke-static {p1, v1}, Ll6/b;->a(Ll6/g;Lv7/d;)V

    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->ALL:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, v0, v1

    invoke-static {p1, v1}, Ll6/b;->a(Ll6/g;Lv7/d;)V

    invoke-virtual {p1}, Lv7/w;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->REMAINING:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Ll6/b;->a(Ll6/g;Lv7/d;)V

    :cond_2
    invoke-virtual {p1}, Lv7/w;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "No publish flow registered for {}."

    sget-object v1, Ll6/c;->j:Lv5/a;

    invoke-interface {v1, v0, v2}, Lv5/a;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Ll6/c;->a()V

    iget-object v0, p1, Lv7/w;->a:Ld/g0;

    :goto_2
    check-cast v0, Lv7/c;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lv7/c;->c:Ljava/lang/Object;

    check-cast v1, Ll6/a;

    iget v2, v1, Ll6/a;->l:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Ll6/a;->l:I

    if-ne v2, v3, :cond_4

    iget v1, p0, Ll6/c;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Ll6/c;->g:I

    :cond_4
    iget-object v0, v0, Ld/g0;->b:Ljava/lang/Object;

    check-cast v0, Ld/g0;

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Ll6/c;->b(Ll6/g;)V

    return-void
.end method
