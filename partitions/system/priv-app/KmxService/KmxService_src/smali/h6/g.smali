.class public final Lh6/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo6/e;

.field public final b:Ll6/f;

.field public final c:Lm6/a;

.field public d:Z

.field public e:Lio/netty/util/concurrent/c;


# direct methods
.method public constructor <init>(Lo6/e;Ll6/f;Lm6/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/g;->a:Lo6/e;

    iput-object p2, p0, Lh6/g;->b:Ll6/f;

    iput-object p3, p0, Lh6/g;->c:Lm6/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;)V
    .locals 10

    iget-boolean v0, p0, Lh6/g;->d:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh6/g;->d:Z

    iget-object v1, p0, Lh6/g;->c:Lm6/a;

    iput-boolean v0, v1, Lh6/h;->b:Z

    iget-object v2, v1, Lm6/a;->i:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/j;->e()V

    iget-object v2, v1, Lm6/a;->c:Lw5/h;

    iget-boolean v3, v2, Lw5/h;->q:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lw5/h;->b()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lm6/a;->g:Lv7/w;

    iget-object v5, v2, Lv7/w;->a:Ld/g0;

    invoke-static {v5}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    iput-object v3, v2, Lv7/w;->a:Ld/g0;

    iput-object v3, v2, Lv7/w;->b:Ld/g0;

    :cond_2
    iget-object v2, v1, Lm6/a;->e:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    invoke-virtual {v2}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    iget-object v2, v1, Lm6/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    iget-object v1, p0, Lh6/g;->b:Ll6/f;

    iput-boolean v0, v1, Lh6/h;->b:Z

    iget-object v1, v1, Ll6/f;->e:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/j;->e()V

    iget-object p0, p0, Lh6/g;->a:Lo6/e;

    iput-boolean v0, p0, Lh6/h;->b:Z

    iget-object v1, p0, Lo6/e;->h:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/j;->e()V

    iput-object v3, p0, Lo6/e;->i:Lo6/b;

    iget-object v1, p0, Lo6/e;->e:Lv7/w;

    iget-object v2, v1, Lv7/w;->a:Ld/g0;

    :goto_2
    check-cast v2, Lo6/b;

    if-eqz v2, :cond_4

    iget v5, v2, Lo6/b;->c:I

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lo6/e;->f:Ll6/l;

    invoke-virtual {v6, v5}, Ll6/l;->d(I)V

    iput v0, v2, Lo6/b;->c:I

    iget-object v2, v2, Ld/g0;->b:Ljava/lang/Object;

    check-cast v2, Ld/g0;

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v2, p0, Lo6/e;->c:Lw5/h;

    iget-boolean v5, v2, Lw5/h;->p:Z

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lw5/h;->b()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v2

    sget-object v5, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    if-eq v2, v5, :cond_5

    goto/16 :goto_a

    :cond_5
    iget-object v2, p0, Lo6/e;->d:Ll6/b;

    iget-object v5, v2, Ll6/b;->a:Ll6/l;

    iget-object v6, v5, Ll6/l;->a:Ljava/lang/Object;

    check-cast v6, Ll6/k;

    :goto_4
    if-eqz v6, :cond_f

    iget-object v7, v6, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/j;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll6/k;

    goto :goto_4

    :cond_6
    iget-object v7, v6, Ll6/k;->d:Ll6/k;

    if-eqz v7, :cond_7

    move-object v6, v7

    goto :goto_4

    :cond_7
    iget-object v7, v6, Ll6/k;->e:Lv7/w;

    if-eqz v7, :cond_a

    iget-object v7, v7, Lv7/w;->a:Ld/g0;

    :goto_5
    check-cast v7, Ll6/j;

    if-eqz v7, :cond_9

    iget-object v8, v7, Ll6/j;->f:Ll6/h;

    if-eqz v8, :cond_8

    iget-boolean v9, v7, Ll6/j;->h:Z

    if-eqz v9, :cond_8

    invoke-virtual {v8, p1}, Ll6/a;->onError(Ljava/lang/Throwable;)V

    :cond_8
    iget-object v7, v7, Ld/g0;->b:Ljava/lang/Object;

    check-cast v7, Ld/g0;

    goto :goto_5

    :cond_9
    iput-object v3, v6, Ll6/k;->e:Lv7/w;

    :cond_a
    iget-object v7, v6, Ll6/k;->f:Lv7/w;

    if-eqz v7, :cond_d

    iget-object v7, v7, Lv7/w;->a:Ld/g0;

    :goto_6
    check-cast v7, Ll6/j;

    if-eqz v7, :cond_c

    iget-object v8, v7, Ll6/j;->f:Ll6/h;

    if-eqz v8, :cond_b

    iget-boolean v9, v7, Ll6/j;->h:Z

    if-eqz v9, :cond_b

    invoke-virtual {v8, p1}, Ll6/a;->onError(Ljava/lang/Throwable;)V

    :cond_b
    iget-object v7, v7, Ld/g0;->b:Ljava/lang/Object;

    check-cast v7, Ld/g0;

    goto :goto_6

    :cond_c
    iput-object v3, v6, Ll6/k;->f:Lv7/w;

    :cond_d
    iget-object v7, v6, Ll6/k;->a:Ll6/k;

    if-eqz v7, :cond_e

    invoke-virtual {v7, v6}, Ll6/k;->g(Ll6/k;)V

    :cond_e
    iget-object v6, v6, Ll6/k;->a:Ll6/k;

    goto :goto_4

    :cond_f
    iput-object v3, v5, Ll6/l;->a:Ljava/lang/Object;

    :goto_7
    iget-object v5, v2, Ll6/b;->b:[Lv7/d;

    array-length v6, v5

    if-ge v0, v6, :cond_12

    aget-object v6, v5, v0

    if-eqz v6, :cond_11

    iget-object v6, v6, Lv7/w;->a:Ld/g0;

    check-cast v6, Lv7/c;

    if-nez v6, :cond_10

    goto :goto_8

    :cond_10
    iget-object p0, v6, Lv7/c;->c:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v3

    :cond_11
    :goto_8
    aput-object v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    iget-object v0, v1, Lv7/w;->a:Ld/g0;

    :goto_9
    check-cast v0, Lo6/b;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lo6/b;->g()Lo6/d;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-interface {v2, p1}, Lo6/d;->onError(Ljava/lang/Throwable;)V

    :cond_13
    iget-object v0, v0, Ld/g0;->b:Ljava/lang/Object;

    check-cast v0, Ld/g0;

    goto :goto_9

    :cond_14
    iput-object v3, v1, Lv7/w;->a:Ld/g0;

    iput-object v3, v1, Lv7/w;->b:Ld/g0;

    iput v4, p0, Lo6/e;->g:I

    :cond_15
    :goto_a
    return-void
.end method
