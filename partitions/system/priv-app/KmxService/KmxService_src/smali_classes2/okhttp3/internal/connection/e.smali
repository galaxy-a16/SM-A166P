.class public final Lokhttp3/internal/connection/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ld/m;

.field public b:Lokhttp3/internal/connection/n;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lokhttp3/p0;

.field public final g:Lokhttp3/internal/connection/m;

.field public final h:Lokhttp3/a;

.field public final i:Lokhttp3/internal/connection/i;

.field public final j:Le9/a;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/m;Lokhttp3/a;Lokhttp3/internal/connection/i;Le9/a;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/connection/m;

    iput-object p2, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/a;

    iput-object p3, p0, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iput-object p4, p0, Lokhttp3/internal/connection/e;->j:Le9/a;

    return-void
.end method


# virtual methods
.method public final a(IIIZZ)Lokhttp3/internal/connection/k;
    .locals 14

    move-object v1, p0

    :goto_0
    iget-object v0, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iget-boolean v0, v0, Lokhttp3/internal/connection/i;->m:Z

    if-nez v0, :cond_2a

    iget-object v0, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iget-object v2, v0, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    monitor-enter v2

    :try_start_0
    iget-boolean v5, v2, Lokhttp3/internal/connection/k;->i:Z

    if-nez v5, :cond_1

    iget-object v5, v2, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v5, v5, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v5, v5, Lokhttp3/a;->a:Lokhttp3/u;

    invoke-virtual {p0, v5}, Lokhttp3/internal/connection/e;->b(Lokhttp3/u;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v4

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v5, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    invoke-virtual {v5}, Lokhttp3/internal/connection/i;->i()Ljava/net/Socket;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v2

    iget-object v6, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iget-object v6, v6, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    if-eqz v6, :cond_4

    if-nez v5, :cond_2

    move v0, v3

    :cond_2
    if-eqz v0, :cond_3

    goto/16 :goto_11

    :cond_3
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v5, :cond_5

    invoke-static {v5}, Lac/c;->c(Ljava/net/Socket;)V

    :cond_5
    iget-object v2, v1, Lokhttp3/internal/connection/e;->j:Le9/a;

    iget-object v5, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "call"

    invoke-static {v5, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_6
    :goto_3
    iput v0, v1, Lokhttp3/internal/connection/e;->c:I

    iput v0, v1, Lokhttp3/internal/connection/e;->d:I

    iput v0, v1, Lokhttp3/internal/connection/e;->e:I

    iget-object v2, v1, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/connection/m;

    iget-object v5, v1, Lokhttp3/internal/connection/e;->h:Lokhttp3/a;

    iget-object v6, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    invoke-virtual {v2, v5, v6, v4, v0}, Lokhttp3/internal/connection/m;->a(Lokhttp3/a;Lokhttp3/internal/connection/i;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iget-object v0, v0, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    if-eqz v0, :cond_7

    goto/16 :goto_e

    :cond_7
    invoke-static {}, Li4/f;->M()V

    throw v4

    :cond_8
    iget-object v2, v1, Lokhttp3/internal/connection/e;->f:Lokhttp3/p0;

    if-eqz v2, :cond_9

    iput-object v4, v1, Lokhttp3/internal/connection/e;->f:Lokhttp3/p0;

    goto :goto_4

    :cond_9
    iget-object v2, v1, Lokhttp3/internal/connection/e;->a:Ld/m;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ld/m;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, v1, Lokhttp3/internal/connection/e;->a:Ld/m;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ld/m;->c()Lokhttp3/p0;

    move-result-object v2

    :goto_4
    move-object v5, v4

    goto/16 :goto_f

    :cond_a
    invoke-static {}, Li4/f;->M()V

    throw v4

    :cond_b
    iget-object v2, v1, Lokhttp3/internal/connection/e;->b:Lokhttp3/internal/connection/n;

    if-nez v2, :cond_c

    new-instance v2, Lokhttp3/internal/connection/n;

    iget-object v5, v1, Lokhttp3/internal/connection/e;->h:Lokhttp3/a;

    iget-object v6, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iget-object v7, v6, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object v7, v7, Lokhttp3/b0;->B:Ll6/l;

    iget-object v8, v1, Lokhttp3/internal/connection/e;->j:Le9/a;

    invoke-direct {v2, v5, v7, v6, v8}, Lokhttp3/internal/connection/n;-><init>(Lokhttp3/a;Ll6/l;Lokhttp3/internal/connection/i;Le9/a;)V

    iput-object v2, v1, Lokhttp3/internal/connection/e;->b:Lokhttp3/internal/connection/n;

    :cond_c
    invoke-virtual {v2}, Lokhttp3/internal/connection/n;->a()Z

    move-result v5

    if-eqz v5, :cond_29

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    iget v6, v2, Lokhttp3/internal/connection/n;->b:I

    iget-object v7, v2, Lokhttp3/internal/connection/n;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    move v6, v3

    goto :goto_5

    :cond_e
    move v6, v0

    :goto_5
    if-eqz v6, :cond_1b

    iget v6, v2, Lokhttp3/internal/connection/n;->b:I

    iget-object v7, v2, Lokhttp3/internal/connection/n;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    move v6, v3

    goto :goto_6

    :cond_f
    move v6, v0

    :goto_6
    const-string v7, "No route to "

    iget-object v8, v2, Lokhttp3/internal/connection/n;->e:Lokhttp3/a;

    if-eqz v6, :cond_1a

    iget-object v6, v2, Lokhttp3/internal/connection/n;->a:Ljava/util/List;

    iget v9, v2, Lokhttp3/internal/connection/n;->b:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v2, Lokhttp3/internal/connection/n;->b:I

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v2, Lokhttp3/internal/connection/n;->c:Ljava/util/List;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v10, v11, :cond_13

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v10, v11, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v10

    instance-of v11, v10, Ljava/net/InetSocketAddress;

    if-eqz v11, :cond_12

    check-cast v10, Ljava/net/InetSocketAddress;

    const-string v11, "$this$socketHost"

    invoke-static {v10, v11}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    const-string v12, "address.hostAddress"

    goto :goto_7

    :cond_11
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "hostName"

    :goto_7
    invoke-static {v11, v12}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    goto :goto_9

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_8
    iget-object v10, v8, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v11, v10, Lokhttp3/u;->e:Ljava/lang/String;

    iget v10, v10, Lokhttp3/u;->f:I

    :goto_9
    if-gt v3, v10, :cond_19

    const v12, 0xffff

    if-lt v12, v10, :cond_19

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v12, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v7, v12, :cond_14

    invoke-static {v11, v10}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    iget-object v7, v2, Lokhttp3/internal/connection/n;->h:Le9/a;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Lokhttp3/internal/connection/n;->g:Lokhttp3/e;

    const-string v12, "call"

    invoke-static {v7, v12}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "domainName"

    invoke-static {v11, v7}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v8, Lokhttp3/a;->d:Lokhttp3/m;

    check-cast v7, Lc3/l;

    invoke-virtual {v7, v11}, Lc3/l;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_18

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    new-instance v11, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v8, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    :goto_b
    iget-object v7, v2, Lokhttp3/internal/connection/n;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    new-instance v9, Lokhttp3/p0;

    iget-object v10, v2, Lokhttp3/internal/connection/n;->e:Lokhttp3/a;

    invoke-direct {v9, v10, v6, v8}, Lokhttp3/p0;-><init>(Lokhttp3/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v8, v2, Lokhttp3/internal/connection/n;->f:Ll6/l;

    monitor-enter v8

    :try_start_1
    iget-object v10, v8, Ll6/l;->a:Ljava/lang/Object;

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v8

    if-eqz v10, :cond_16

    iget-object v8, v2, Lokhttp3/internal/connection/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :catchall_1
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_d

    goto :goto_d

    :cond_18
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lokhttp3/a;->d:Lokhttp3/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; port is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v3, v3, Lokhttp3/u;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; exhausted proxy configurations: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lokhttp3/internal/connection/n;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, v2, Lokhttp3/internal/connection/n;->d:Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lkotlin/collections/q;->Q0(Ljava/util/Collection;Ljava/util/AbstractCollection;)V

    iget-object v2, v2, Lokhttp3/internal/connection/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1c
    new-instance v2, Ld/m;

    invoke-direct {v2, v5}, Ld/m;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, v1, Lokhttp3/internal/connection/e;->a:Ld/m;

    check-cast v5, Ljava/util/List;

    iget-object v6, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iget-boolean v6, v6, Lokhttp3/internal/connection/i;->m:Z

    if-nez v6, :cond_28

    iget-object v6, v1, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/connection/m;

    iget-object v7, v1, Lokhttp3/internal/connection/e;->h:Lokhttp3/a;

    iget-object v8, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    invoke-virtual {v6, v7, v8, v5, v0}, Lokhttp3/internal/connection/m;->a(Lokhttp3/a;Lokhttp3/internal/connection/i;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iget-object v0, v0, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    if-eqz v0, :cond_1d

    :goto_e
    iget-object v2, v1, Lokhttp3/internal/connection/e;->j:Le9/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_10

    :cond_1d
    invoke-static {}, Li4/f;->M()V

    throw v4

    :cond_1e
    invoke-virtual {v2}, Ld/m;->c()Lokhttp3/p0;

    move-result-object v2

    :goto_f
    new-instance v13, Lokhttp3/internal/connection/k;

    iget-object v0, v1, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/connection/m;

    invoke-direct {v13, v0, v2}, Lokhttp3/internal/connection/k;-><init>(Lokhttp3/internal/connection/m;Lokhttp3/p0;)V

    iget-object v0, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iput-object v13, v0, Lokhttp3/internal/connection/i;->p:Lokhttp3/internal/connection/k;

    :try_start_2
    iget-object v11, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iget-object v12, v1, Lokhttp3/internal/connection/e;->j:Le9/a;

    move-object v6, v13

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v6 .. v12}, Lokhttp3/internal/connection/k;->c(IIIZLokhttp3/internal/connection/i;Le9/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    iget-object v0, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iput-object v4, v0, Lokhttp3/internal/connection/i;->p:Lokhttp3/internal/connection/k;

    iget-object v0, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iget-object v0, v0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object v6, v0, Lokhttp3/b0;->B:Ll6/l;

    iget-object v0, v13, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    monitor-enter v6

    :try_start_3
    const-string v7, "route"

    invoke-static {v0, v7}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v6, Ll6/l;->a:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v6

    iget-object v0, v1, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/connection/m;

    iget-object v6, v1, Lokhttp3/internal/connection/e;->h:Lokhttp3/a;

    iget-object v7, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    invoke-virtual {v0, v6, v7, v5, v3}, Lokhttp3/internal/connection/m;->a(Lokhttp3/a;Lokhttp3/internal/connection/i;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iget-object v0, v0, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    if-eqz v0, :cond_20

    iput-object v2, v1, Lokhttp3/internal/connection/e;->f:Lokhttp3/p0;

    iget-object v2, v13, Lokhttp3/internal/connection/k;->c:Ljava/net/Socket;

    if-eqz v2, :cond_1f

    invoke-static {v2}, Lac/c;->c(Ljava/net/Socket;)V

    iget-object v2, v1, Lokhttp3/internal/connection/e;->j:Le9/a;

    iget-object v4, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "call"

    invoke-static {v4, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_10
    move-object v2, v0

    goto :goto_11

    :cond_1f
    invoke-static {}, Li4/f;->M()V

    throw v4

    :cond_20
    invoke-static {}, Li4/f;->M()V

    throw v4

    :cond_21
    monitor-enter v13

    :try_start_4
    iget-object v0, v1, Lokhttp3/internal/connection/e;->g:Lokhttp3/internal/connection/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lac/c;->a:[B

    iget-object v2, v0, Lokhttp3/internal/connection/m;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v13}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lokhttp3/internal/connection/m;->b:Lbc/c;

    iget-object v0, v0, Lokhttp3/internal/connection/m;->c:Lokhttp3/internal/connection/l;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Lbc/c;->c(Lbc/a;J)V

    iget-object v0, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    invoke-virtual {v0, v13}, Lokhttp3/internal/connection/i;->b(Lokhttp3/internal/connection/k;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v13

    iget-object v0, v1, Lokhttp3/internal/connection/e;->j:Le9/a;

    iget-object v2, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "call"

    invoke-static {v2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v13

    :goto_11
    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/k;->i(Z)Z

    move-result v4

    if-eqz v4, :cond_22

    return-object v2

    :cond_22
    invoke-virtual {v2}, Lokhttp3/internal/connection/k;->k()V

    iget-object v2, v1, Lokhttp3/internal/connection/e;->f:Lokhttp3/p0;

    if-eqz v2, :cond_23

    goto/16 :goto_0

    :cond_23
    iget-object v2, v1, Lokhttp3/internal/connection/e;->a:Ld/m;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ld/m;->b()Z

    move-result v2

    goto :goto_12

    :cond_24
    move v2, v3

    :goto_12
    if-eqz v2, :cond_25

    goto/16 :goto_0

    :cond_25
    iget-object v2, v1, Lokhttp3/internal/connection/e;->b:Lokhttp3/internal/connection/n;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lokhttp3/internal/connection/n;->a()Z

    move-result v3

    :cond_26
    if-eqz v3, :cond_27

    goto/16 :goto_0

    :cond_27
    new-instance v0, Ljava/io/IOException;

    const-string v1, "exhausted all routes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v13

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v6

    throw v0

    :catchall_4
    move-exception v0

    iget-object v1, v1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iput-object v4, v1, Lokhttp3/internal/connection/i;->p:Lokhttp3/internal/connection/k;

    throw v0

    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lokhttp3/u;)Z
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/a;

    iget-object p0, p0, Lokhttp3/a;->a:Lokhttp3/u;

    iget v0, p0, Lokhttp3/u;->f:I

    iget v1, p1, Lokhttp3/u;->f:I

    if-ne v1, v0, :cond_0

    iget-object p1, p1, Lokhttp3/u;->e:Ljava/lang/String;

    iget-object p0, p0, Lokhttp3/u;->e:Ljava/lang/String;

    invoke-static {p1, p0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/e;->f:Lokhttp3/p0;

    instance-of v0, p1, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v0, v0, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v0, v1, :cond_0

    iget p1, p0, Lokhttp3/internal/connection/e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/e;->c:I

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz p1, :cond_1

    iget p1, p0, Lokhttp3/internal/connection/e;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/e;->d:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lokhttp3/internal/connection/e;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/e;->e:I

    :goto_0
    return-void
.end method
