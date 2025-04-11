.class public final Lokhttp3/internal/connection/k;
.super Lec/j;
.source "SourceFile"


# instance fields
.field public b:Ljava/net/Socket;

.field public c:Ljava/net/Socket;

.field public d:Lokhttp3/q;

.field public e:Lokhttp3/Protocol;

.field public f:Lec/t;

.field public g:Lkc/o;

.field public h:Lkc/n;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public final o:Ljava/util/ArrayList;

.field public p:J

.field public final q:Lokhttp3/p0;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/m;Lokhttp3/p0;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lec/j;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    const/4 p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/k;->n:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/k;->o:Ljava/util/ArrayList;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lokhttp3/internal/connection/k;->p:J

    return-void
.end method

.method public static d(Lokhttp3/b0;Lokhttp3/p0;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "client"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRoute"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lokhttp3/p0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v1, v0, Lokhttp3/a;->k:Ljava/net/ProxySelector;

    iget-object v0, v0, Lokhttp3/a;->a:Lokhttp3/u;

    invoke-virtual {v0}, Lokhttp3/u;->g()Ljava/net/URI;

    move-result-object v0

    iget-object v2, p1, Lokhttp3/p0;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p0, p0, Lokhttp3/b0;->B:Ll6/l;

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Ll6/l;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Lec/t;Lec/e0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p2, Lec/e0;->a:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    iget-object p1, p2, Lec/e0;->b:[I

    const/4 p2, 0x4

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    iput p1, p0, Lokhttp3/internal/connection/k;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Lec/z;)V
    .locals 1

    const-string p0, "stream"

    invoke-static {p1, p0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lec/z;->c(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public final c(IIIZLokhttp3/internal/connection/i;Le9/a;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    const-string v10, "proxy"

    const-string v11, "inetSocketAddress"

    const-string v0, "call"

    invoke-static {v8, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {v9, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v7, Lokhttp3/internal/connection/k;->e:Lokhttp3/Protocol;

    const/4 v12, 0x1

    if-nez v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_15

    iget-object v0, v7, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v0, v0, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v0, v0, Lokhttp3/a;->c:Ljava/util/List;

    new-instance v13, Lcom/google/android/gms/measurement/internal/v2;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/v2;-><init>(Ljava/util/List;)V

    iget-object v1, v7, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v1, v1, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v2, v1, Lokhttp3/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_3

    sget-object v1, Lokhttp3/j;->f:Lokhttp3/j;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v0, v0, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v0, v0, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v0, v0, Lokhttp3/u;->e:Ljava/lang/String;

    sget-object v1, Lfc/m;->a:Lfc/m;

    sget-object v1, Lfc/m;->a:Lfc/m;

    invoke-virtual {v1, v0}, Lfc/m;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication to "

    const-string v4, " not permitted by network security policy"

    invoke-static {v3, v0, v4}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_2
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_3
    iget-object v0, v1, Lokhttp3/a;->b:Ljava/util/List;

    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :goto_1
    const/4 v14, 0x0

    move-object v15, v14

    :goto_2
    :try_start_0
    iget-object v0, v7, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v1, v0, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v1, v1, Lokhttp3/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lokhttp3/p0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_4

    move v0, v12

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/k;->f(IIILokhttp3/internal/connection/i;Le9/a;)V

    iget-object v0, v7, Lokhttp3/internal/connection/k;->b:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_5

    :goto_4
    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_9

    :cond_6
    move/from16 v1, p1

    move/from16 v2, p2

    :try_start_1
    invoke-virtual {v7, v1, v2, v8, v9}, Lokhttp3/internal/connection/k;->e(IILokhttp3/internal/connection/i;Le9/a;)V

    :goto_5
    invoke-virtual {v7, v13, v8, v9}, Lokhttp3/internal/connection/k;->g(Lcom/google/android/gms/measurement/internal/v2;Lokhttp3/internal/connection/i;Le9/a;)V

    iget-object v0, v7, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v3, v0, Lokhttp3/p0;->c:Ljava/net/InetSocketAddress;

    iget-object v0, v0, Lokhttp3/p0;->b:Ljava/net/Proxy;

    invoke-static {v3, v11}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v10}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    iget-object v0, v7, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v1, v0, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v1, v1, Lokhttp3/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lokhttp3/p0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_9

    iget-object v0, v7, Lokhttp3/internal/connection/k;->b:Ljava/net/Socket;

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Too many tunnel connections attempted: 21"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_9
    :goto_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, v7, Lokhttp3/internal/connection/k;->p:J

    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_4

    :goto_9
    iget-object v3, v7, Lokhttp3/internal/connection/k;->c:Ljava/net/Socket;

    if-eqz v3, :cond_a

    invoke-static {v3}, Lac/c;->c(Ljava/net/Socket;)V

    :cond_a
    iget-object v3, v7, Lokhttp3/internal/connection/k;->b:Ljava/net/Socket;

    if-eqz v3, :cond_b

    invoke-static {v3}, Lac/c;->c(Ljava/net/Socket;)V

    :cond_b
    iput-object v14, v7, Lokhttp3/internal/connection/k;->c:Ljava/net/Socket;

    iput-object v14, v7, Lokhttp3/internal/connection/k;->b:Ljava/net/Socket;

    iput-object v14, v7, Lokhttp3/internal/connection/k;->g:Lkc/o;

    iput-object v14, v7, Lokhttp3/internal/connection/k;->h:Lkc/n;

    iput-object v14, v7, Lokhttp3/internal/connection/k;->d:Lokhttp3/q;

    iput-object v14, v7, Lokhttp3/internal/connection/k;->e:Lokhttp3/Protocol;

    iput-object v14, v7, Lokhttp3/internal/connection/k;->f:Lec/t;

    iput v12, v7, Lokhttp3/internal/connection/k;->n:I

    iget-object v3, v7, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v4, v3, Lokhttp3/p0;->c:Ljava/net/InetSocketAddress;

    iget-object v3, v3, Lokhttp3/p0;->b:Ljava/net/Proxy;

    invoke-static {v4, v11}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v10}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v15, :cond_c

    new-instance v15, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v15, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_a

    :cond_c
    invoke-virtual {v15, v0}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_a
    if-eqz p4, :cond_13

    iput-boolean v12, v13, Lcom/google/android/gms/measurement/internal/v2;->c:Z

    iget-boolean v3, v13, Lcom/google/android/gms/measurement/internal/v2;->b:Z

    if-nez v3, :cond_d

    goto :goto_b

    :cond_d
    instance-of v3, v0, Ljava/net/ProtocolException;

    if-eqz v3, :cond_e

    goto :goto_b

    :cond_e
    instance-of v3, v0, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_f

    goto :goto_b

    :cond_f
    instance-of v3, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    instance-of v3, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v3, :cond_11

    goto :goto_b

    :cond_11
    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_12

    move v0, v12

    goto :goto_c

    :cond_12
    :goto_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_13

    goto/16 :goto_2

    :cond_13
    throw v15

    :cond_14
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(IILokhttp3/internal/connection/i;Le9/a;)V
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v1, v0, Lokhttp3/p0;->b:Ljava/net/Proxy;

    iget-object v0, v0, Lokhttp3/p0;->a:Lokhttp3/a;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lokhttp3/internal/connection/j;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :goto_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lokhttp3/a;->e:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_1
    iput-object v0, p0, Lokhttp3/internal/connection/k;->b:Ljava/net/Socket;

    iget-object v1, p0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v1, v1, Lokhttp3/p0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p4, "call"

    invoke-static {p3, p4}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "inetSocketAddress"

    invoke-static {v1, p3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object p2, Lfc/m;->a:Lfc/m;

    sget-object p2, Lfc/m;->a:Lfc/m;

    iget-object p3, p0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object p3, p3, Lokhttp3/p0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "address"

    invoke-static {p3, p2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, Li4/f;->J(Ljava/net/Socket;)Lkc/c;

    move-result-object p1

    new-instance p2, Lkc/o;

    invoke-direct {p2, p1}, Lkc/o;-><init>(Lkc/t;)V

    iput-object p2, p0, Lokhttp3/internal/connection/k;->g:Lkc/o;

    invoke-static {v0}, Li4/f;->I(Ljava/net/Socket;)Lkc/b;

    move-result-object p1

    new-instance p2, Lkc/n;

    invoke-direct {p2, p1}, Lkc/n;-><init>(Lkc/r;)V

    iput-object p2, p0, Lokhttp3/internal/connection/k;->h:Lkc/n;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "throw with null exception"

    invoke-static {p1, p2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_2
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to connect to "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object p0, p0, Lokhttp3/p0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_3
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(IIILokhttp3/internal/connection/i;Le9/a;)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p2

    new-instance v2, Lokhttp3/d0;

    invoke-direct {v2}, Lokhttp3/d0;-><init>()V

    iget-object v3, v0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v4, v3, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v4, v4, Lokhttp3/a;->a:Lokhttp3/u;

    const-string v5, "url"

    invoke-static {v4, v5}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v2, Lokhttp3/d0;->a:Lokhttp3/u;

    const-string v4, "CONNECT"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lokhttp3/d0;->c(Ljava/lang/String;Lokhttp3/i0;)V

    iget-object v3, v3, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v4, v3, Lokhttp3/a;->a:Lokhttp3/u;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lac/c;->t(Lokhttp3/u;Z)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Host"

    invoke-virtual {v2, v7, v4}, Lokhttp3/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Proxy-Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v2, v4, v7}, Lokhttp3/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "User-Agent"

    const-string v7, "okhttp/4.8.0"

    invoke-virtual {v2, v4, v7}, Lokhttp3/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lokhttp3/d0;->a()Lokhttp3/e0;

    move-result-object v2

    new-instance v4, Lokhttp3/j0;

    invoke-direct {v4}, Lokhttp3/j0;-><init>()V

    iput-object v2, v4, Lokhttp3/j0;->a:Lokhttp3/e0;

    sget-object v7, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v4, v7}, Lokhttp3/j0;->d(Lokhttp3/Protocol;)V

    const/16 v7, 0x197

    iput v7, v4, Lokhttp3/j0;->c:I

    const-string v8, "Preemptive Authenticate"

    iput-object v8, v4, Lokhttp3/j0;->d:Ljava/lang/String;

    sget-object v8, Lac/c;->c:Lokhttp3/m0;

    iput-object v8, v4, Lokhttp3/j0;->g:Lokhttp3/o0;

    const-wide/16 v8, -0x1

    iput-wide v8, v4, Lokhttp3/j0;->k:J

    iput-wide v8, v4, Lokhttp3/j0;->l:J

    iget-object v10, v4, Lokhttp3/j0;->f:Lokhttp3/r;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "Proxy-Authenticate"

    invoke-static {v11}, Lokhttp3/p;->a(Ljava/lang/String;)V

    const-string v12, "OkHttp-Preemptive"

    invoke-static {v12, v11}, Lokhttp3/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lokhttp3/r;->d(Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Lokhttp3/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lokhttp3/j0;->a()Lokhttp3/k0;

    iget-object v4, v3, Lokhttp3/a;->i:Lokhttp3/b;

    check-cast v4, Le9/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual {p0, p1, v1, v10, v11}, Lokhttp3/internal/connection/k;->e(IILokhttp3/internal/connection/i;Le9/a;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "CONNECT "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v2, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-static {v10, v6}, Lac/c;->t(Lokhttp3/u;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " HTTP/1.1"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lokhttp3/internal/connection/k;->g:Lkc/o;

    if-eqz v6, :cond_6

    iget-object v10, v0, Lokhttp3/internal/connection/k;->h:Lkc/n;

    if-eqz v10, :cond_5

    new-instance v11, Ldc/h;

    invoke-direct {v11, v5, p0, v6, v10}, Ldc/h;-><init>(Lokhttp3/b0;Lokhttp3/internal/connection/k;Lkc/g;Lkc/f;)V

    invoke-virtual {v6}, Lkc/o;->timeout()Lkc/v;

    move-result-object v0

    int-to-long v12, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v12, v13, v1}, Lkc/v;->g(JLjava/util/concurrent/TimeUnit;)Lkc/v;

    invoke-virtual {v10}, Lkc/n;->timeout()Lkc/v;

    move-result-object v0

    move/from16 v12, p3

    int-to-long v12, v12

    invoke-virtual {v0, v12, v13, v1}, Lkc/v;->g(JLjava/util/concurrent/TimeUnit;)Lkc/v;

    iget-object v0, v2, Lokhttp3/e0;->d:Lokhttp3/s;

    invoke-virtual {v11, v0, v4}, Ldc/h;->j(Lokhttp3/s;Ljava/lang/String;)V

    invoke-virtual {v11}, Ldc/h;->a()V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ldc/h;->g(Z)Lokhttp3/j0;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v2, v0, Lokhttp3/j0;->a:Lokhttp3/e0;

    invoke-virtual {v0}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object v0

    invoke-static {v0}, Lac/c;->i(Lokhttp3/k0;)J

    move-result-wide v4

    cmp-long v2, v4, v8

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v11, v4, v5}, Ldc/h;->i(J)Ldc/e;

    move-result-object v2

    const v4, 0x7fffffff

    invoke-static {v2, v4, v1}, Lac/c;->r(Lkc/t;ILjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v2}, Ldc/e;->close()V

    :goto_0
    const/16 v1, 0xc8

    iget v0, v0, Lokhttp3/k0;->d:I

    if-eq v0, v1, :cond_2

    if-ne v0, v7, :cond_1

    iget-object v0, v3, Lokhttp3/a;->i:Lokhttp3/b;

    check-cast v0, Le9/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-static {v2, v0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, v6, Lkc/o;->a:Lkc/e;

    invoke-virtual {v0}, Lkc/e;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v10, Lkc/n;->a:Lkc/e;

    invoke-virtual {v0}, Lkc/e;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {}, Li4/f;->M()V

    throw v5

    :cond_5
    invoke-static {}, Li4/f;->M()V

    throw v5

    :cond_6
    invoke-static {}, Li4/f;->M()V

    throw v5
.end method

.method public final g(Lcom/google/android/gms/measurement/internal/v2;Lokhttp3/internal/connection/i;Le9/a;)V
    .locals 8

    iget-object v0, p0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v0, v0, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v1, v0, Lokhttp3/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_1

    iget-object p1, v0, Lokhttp3/a;->b:Ljava/util/List;

    sget-object p2, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lokhttp3/internal/connection/k;->b:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/k;->c:Ljava/net/Socket;

    iput-object p2, p0, Lokhttp3/internal/connection/k;->e:Lokhttp3/Protocol;

    invoke-virtual {p0}, Lokhttp3/internal/connection/k;->l()V

    return-void

    :cond_0
    iget-object p1, p0, Lokhttp3/internal/connection/k;->b:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/k;->c:Ljava/net/Socket;

    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object p1, p0, Lokhttp3/internal/connection/k;->e:Lokhttp3/Protocol;

    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "call"

    invoke-static {p2, p3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "\n              |Hostname "

    const-string p3, "Hostname "

    iget-object v0, p0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v0, v0, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v1, v0, Lokhttp3/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/connection/k;->b:Ljava/net/Socket;

    iget-object v4, v0, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v5, v4, Lokhttp3/u;->e:Ljava/lang/String;

    iget v4, v4, Lokhttp3/u;->f:I

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v5, v4, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/v2;->a(Ljavax/net/ssl/SSLSocket;)Lokhttp3/j;

    move-result-object p1

    iget-boolean v3, p1, Lokhttp3/j;->b:Z

    if-eqz v3, :cond_2

    sget-object v3, Lfc/m;->a:Lfc/m;

    sget-object v3, Lfc/m;->a:Lfc/m;

    iget-object v4, v0, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v4, v4, Lokhttp3/u;->e:Ljava/lang/String;

    iget-object v5, v0, Lokhttp3/a;->b:Ljava/util/List;

    invoke-virtual {v3, v1, v4, v5}, Lfc/m;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    const-string v4, "sslSocketSession"

    invoke-static {v3, v4}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lokhttp3/p;->d(Ljavax/net/ssl/SSLSession;)Lokhttp3/q;

    move-result-object v4

    iget-object v5, v0, Lokhttp3/a;->g:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v5, :cond_a

    iget-object v7, v0, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v7, v7, Lokhttp3/u;->e:Ljava/lang/String;

    invoke-interface {v5, v7, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v4}, Lokhttp3/q;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v6

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    check-cast p0, Ljava/security/cert/X509Certificate;

    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object p2, p2, Lokhttp3/u;->e:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not verified:\n              |    certificate: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lokhttp3/g;->c:Lokhttp3/g;

    invoke-static {p0}, Lokhttp3/p;->i(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n              |    DN: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p2

    const-string v0, "cert.subjectDN"

    invoke-static {p2, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n              |    subjectAltNames: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x7

    invoke-static {p0, p2}, Lic/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lic/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    const-string v0, "<this>"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elements"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n              "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/n;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object p2, p2, Lokhttp3/u;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not verified (no certificates)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p2, v0, Lokhttp3/a;->h:Lokhttp3/g;

    if-eqz p2, :cond_9

    new-instance p3, Lokhttp3/q;

    iget-object v3, v4, Lokhttp3/q;->b:Lokhttp3/TlsVersion;

    iget-object v5, v4, Lokhttp3/q;->c:Lokhttp3/h;

    iget-object v6, v4, Lokhttp3/q;->d:Ljava/util/List;

    new-instance v7, Lokhttp3/internal/connection/RealConnection$connectTls$1;

    invoke-direct {v7, p2, v4, v0}, Lokhttp3/internal/connection/RealConnection$connectTls$1;-><init>(Lokhttp3/g;Lokhttp3/q;Lokhttp3/a;)V

    invoke-direct {p3, v3, v5, v6, v7}, Lokhttp3/q;-><init>(Lokhttp3/TlsVersion;Lokhttp3/h;Ljava/util/List;Lvb/a;)V

    iput-object p3, p0, Lokhttp3/internal/connection/k;->d:Lokhttp3/q;

    iget-object p3, v0, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object p3, p3, Lokhttp3/u;->e:Ljava/lang/String;

    new-instance v0, Lokhttp3/internal/connection/RealConnection$connectTls$2;

    invoke-direct {v0, p0}, Lokhttp3/internal/connection/RealConnection$connectTls$2;-><init>(Lokhttp3/internal/connection/k;)V

    invoke-virtual {p2, p3, v0}, Lokhttp3/g;->b(Ljava/lang/String;Lvb/a;)V

    iget-boolean p1, p1, Lokhttp3/j;->b:Z

    if-eqz p1, :cond_6

    sget-object p1, Lfc/m;->a:Lfc/m;

    sget-object p1, Lfc/m;->a:Lfc/m;

    invoke-virtual {p1, v1}, Lfc/m;->e(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    iput-object v1, p0, Lokhttp3/internal/connection/k;->c:Ljava/net/Socket;

    invoke-static {v1}, Li4/f;->J(Ljava/net/Socket;)Lkc/c;

    move-result-object p1

    new-instance p2, Lkc/o;

    invoke-direct {p2, p1}, Lkc/o;-><init>(Lkc/t;)V

    iput-object p2, p0, Lokhttp3/internal/connection/k;->g:Lkc/o;

    invoke-static {v1}, Li4/f;->I(Ljava/net/Socket;)Lkc/b;

    move-result-object p1

    new-instance p2, Lkc/n;

    invoke-direct {p2, p1}, Lkc/n;-><init>(Lkc/r;)V

    iput-object p2, p0, Lokhttp3/internal/connection/k;->h:Lkc/n;

    if-eqz v2, :cond_7

    sget-object p1, Lokhttp3/Protocol;->Companion:Lokhttp3/c0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lokhttp3/c0;->a(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object p1

    goto :goto_0

    :cond_7
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_0
    iput-object p1, p0, Lokhttp3/internal/connection/k;->e:Lokhttp3/Protocol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Lfc/m;->a:Lfc/m;

    sget-object p1, Lfc/m;->a:Lfc/m;

    invoke-virtual {p1, v1}, Lfc/m;->a(Ljavax/net/ssl/SSLSocket;)V

    iget-object p1, p0, Lokhttp3/internal/connection/k;->e:Lokhttp3/Protocol;

    sget-object p2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne p1, p2, :cond_8

    invoke-virtual {p0}, Lokhttp3/internal/connection/k;->l()V

    :cond_8
    return-void

    :cond_9
    :try_start_2
    invoke-static {}, Li4/f;->M()V

    throw v2

    :cond_a
    invoke-static {}, Li4/f;->M()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto :goto_1

    :cond_b
    :try_start_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-static {}, Li4/f;->M()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v2, :cond_d

    sget-object p1, Lfc/m;->a:Lfc/m;

    sget-object p1, Lfc/m;->a:Lfc/m;

    invoke-virtual {p1, v2}, Lfc/m;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_d
    if-eqz v2, :cond_e

    invoke-static {v2}, Lac/c;->c(Ljava/net/Socket;)V

    :cond_e
    throw p0
.end method

.method public final h(Lokhttp3/a;Ljava/util/List;)Z
    .locals 8

    const-string v0, "address"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lac/c;->a:[B

    iget-object v0, p0, Lokhttp3/internal/connection/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lokhttp3/internal/connection/k;->n:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_12

    iget-boolean v0, p0, Lokhttp3/internal/connection/k;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v1, v0, Lokhttp3/p0;->a:Lokhttp3/a;

    invoke-virtual {v1, p1}, Lokhttp3/a;->a(Lokhttp3/a;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p1, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v3, v1, Lokhttp3/u;->e:Ljava/lang/String;

    iget-object v4, v0, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v5, v4, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v5, v5, Lokhttp3/u;->e:Ljava/lang/String;

    invoke-static {v3, v5}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    return v5

    :cond_2
    iget-object v3, p0, Lokhttp3/internal/connection/k;->f:Lec/t;

    if-nez v3, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_12

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/p0;

    iget-object v6, v3, Lokhttp3/p0;->b:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_6

    iget-object v6, v0, Lokhttp3/p0;->b:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_6

    iget-object v6, v0, Lokhttp3/p0;->c:Ljava/net/InetSocketAddress;

    iget-object v3, v3, Lokhttp3/p0;->c:Ljava/net/InetSocketAddress;

    invoke-static {v6, v3}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_0
    if-eqz v3, :cond_5

    move p2, v5

    goto :goto_2

    :cond_7
    :goto_1
    move p2, v2

    :goto_2
    if-nez p2, :cond_8

    goto/16 :goto_7

    :cond_8
    sget-object p2, Lic/c;->a:Lic/c;

    iget-object v0, p1, Lokhttp3/a;->g:Ljavax/net/ssl/HostnameVerifier;

    if-eq v0, p2, :cond_9

    return v2

    :cond_9
    sget-object p2, Lac/c;->a:[B

    iget-object p2, v4, Lokhttp3/a;->a:Lokhttp3/u;

    iget v0, p2, Lokhttp3/u;->f:I

    iget-object v3, v1, Lokhttp3/u;->e:Ljava/lang/String;

    iget v1, v1, Lokhttp3/u;->f:I

    if-eq v1, v0, :cond_a

    goto :goto_5

    :cond_a
    iget-object p2, p2, Lokhttp3/u;->e:Ljava/lang/String;

    invoke-static {v3, p2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_4

    :cond_b
    iget-boolean p2, p0, Lokhttp3/internal/connection/k;->j:Z

    if-nez p2, :cond_e

    iget-object p2, p0, Lokhttp3/internal/connection/k;->d:Lokhttp3/q;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lokhttp3/q;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_d

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-static {v3, p2}, Lic/c;->b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_d

    move p2, v5

    goto :goto_3

    :cond_c
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    move p2, v2

    :goto_3
    if-eqz p2, :cond_e

    :goto_4
    move p2, v5

    goto :goto_6

    :cond_e
    :goto_5
    move p2, v2

    :goto_6
    if-nez p2, :cond_f

    return v2

    :cond_f
    :try_start_0
    iget-object p1, p1, Lokhttp3/a;->h:Lokhttp3/g;

    const/4 p2, 0x0

    if-eqz p1, :cond_11

    iget-object p0, p0, Lokhttp3/internal/connection/k;->d:Lokhttp3/q;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lokhttp3/q;->a()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lokhttp3/g;->a(Ljava/lang/String;Ljava/util/List;)V

    return v5

    :cond_10
    invoke-static {}, Li4/f;->M()V

    throw p2

    :cond_11
    invoke-static {}, Li4/f;->M()V

    throw p2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_12
    :goto_7
    return v2
.end method

.method public final i(Z)Z
    .locals 9

    sget-object v0, Lac/c;->a:[B

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lokhttp3/internal/connection/k;->b:Ljava/net/Socket;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget-object v4, p0, Lokhttp3/internal/connection/k;->c:Ljava/net/Socket;

    if-eqz v4, :cond_7

    iget-object v5, p0, Lokhttp3/internal/connection/k;->g:Lkc/o;

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lokhttp3/internal/connection/k;->f:Lec/t;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    monitor-enter v2

    :try_start_0
    iget-boolean p0, v2, Lec/t;->g:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide p0, v2, Lec/t;->q:J

    iget-wide v4, v2, Lec/t;->p:J

    cmp-long p0, p0, v4

    if-gez p0, :cond_2

    iget-wide p0, v2, Lec/t;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_2

    :goto_0
    monitor-exit v2

    goto :goto_1

    :cond_2
    monitor-exit v2

    move v3, v6

    :goto_1
    return v3

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_3
    monitor-enter p0

    :try_start_1
    iget-wide v7, p0, Lokhttp3/internal/connection/k;->p:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    sub-long/2addr v0, v7

    monitor-exit p0

    const-wide v7, 0x2540be400L

    cmp-long p0, v0, v7

    if-ltz p0, :cond_4

    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I

    move-result p0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v4, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v5}, Lkc/o;->G()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    xor-int/2addr p1, v6

    :try_start_4
    invoke-virtual {v4, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    move v3, p1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {v4, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move v3, v6

    :catch_1
    :goto_2
    return v3

    :cond_4
    return v6

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_3
    return v3

    :cond_6
    invoke-static {}, Li4/f;->M()V

    throw v3

    :cond_7
    invoke-static {}, Li4/f;->M()V

    throw v3

    :cond_8
    invoke-static {}, Li4/f;->M()V

    throw v3
.end method

.method public final j(Lokhttp3/b0;Lcc/f;)Lcc/d;
    .locals 6

    iget-object v0, p0, Lokhttp3/internal/connection/k;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lokhttp3/internal/connection/k;->g:Lkc/o;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lokhttp3/internal/connection/k;->h:Lkc/n;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lokhttp3/internal/connection/k;->f:Lec/t;

    if-eqz v1, :cond_0

    new-instance v0, Lec/u;

    invoke-direct {v0, p1, p0, p2, v1}, Lec/u;-><init>(Lokhttp3/b0;Lokhttp3/internal/connection/k;Lcc/f;Lec/t;)V

    goto :goto_0

    :cond_0
    iget v1, p2, Lcc/f;->h:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v2}, Lkc/o;->timeout()Lkc/v;

    move-result-object v0

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lkc/v;->g(JLjava/util/concurrent/TimeUnit;)Lkc/v;

    invoke-virtual {v3}, Lkc/n;->timeout()Lkc/v;

    move-result-object v0

    iget p2, p2, Lcc/f;->i:I

    int-to-long v4, p2

    invoke-virtual {v0, v4, v5, v1}, Lkc/v;->g(JLjava/util/concurrent/TimeUnit;)Lkc/v;

    new-instance v0, Ldc/h;

    invoke-direct {v0, p1, p0, v2, v3}, Ldc/h;-><init>(Lokhttp3/b0;Lokhttp3/internal/connection/k;Lkc/g;Lkc/f;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_2
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_3
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method

.method public final declared-synchronized k()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/k;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()V
    .locals 9

    iget-object v0, p0, Lokhttp3/internal/connection/k;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v2, p0, Lokhttp3/internal/connection/k;->g:Lkc/o;

    if-eqz v2, :cond_d

    iget-object v3, p0, Lokhttp3/internal/connection/k;->h:Lkc/n;

    if-eqz v3, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v4, Lec/h;

    sget-object v5, Lbc/f;->h:Lbc/f;

    invoke-direct {v4, v5}, Lec/h;-><init>(Lbc/f;)V

    iget-object v6, p0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v6, v6, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v6, v6, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v6, v6, Lokhttp3/u;->e:Ljava/lang/String;

    const-string v7, "peerName"

    invoke-static {v6, v7}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v4, Lec/h;->a:Ljava/net/Socket;

    iget-boolean v0, v4, Lec/h;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lac/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "MockWebServer "

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v4, Lec/h;->b:Ljava/lang/String;

    iput-object v2, v4, Lec/h;->c:Lkc/g;

    iput-object v3, v4, Lec/h;->d:Lkc/f;

    iput-object p0, v4, Lec/h;->e:Lec/j;

    iput v1, v4, Lec/h;->g:I

    new-instance v0, Lec/t;

    invoke-direct {v0, v4}, Lec/t;-><init>(Lec/h;)V

    iput-object v0, p0, Lokhttp3/internal/connection/k;->f:Lec/t;

    sget-object v2, Lec/t;->F:Lec/e0;

    iget v3, v2, Lec/e0;->a:I

    and-int/lit8 v3, v3, 0x10

    const/4 v4, 0x4

    if-eqz v3, :cond_1

    iget-object v2, v2, Lec/e0;->b:[I

    aget v2, v2, v4

    goto :goto_1

    :cond_1
    const v2, 0x7fffffff

    :goto_1
    iput v2, p0, Lokhttp3/internal/connection/k;->n:I

    iget-object p0, v0, Lec/t;->B:Lec/a0;

    const-string v2, ">> CONNECTION "

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lec/a0;->c:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lec/a0;->f:Z

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    sget-object v3, Lec/a0;->g:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lec/f;->a:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lac/c;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lec/a0;->e:Lkc/f;

    sget-object v3, Lec/f;->a:Lokio/ByteString;

    invoke-interface {v2, v3}, Lkc/f;->P(Lokio/ByteString;)Lkc/f;

    iget-object v2, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {v2}, Lkc/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    monitor-exit p0

    iget-object p0, v0, Lec/t;->B:Lec/a0;

    iget-object v2, v0, Lec/t;->u:Lec/e0;

    monitor-enter p0

    :try_start_1
    const-string v3, "settings"

    invoke-static {v2, v3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lec/a0;->c:Z

    if-nez v3, :cond_a

    iget v3, v2, Lec/e0;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    invoke-virtual {p0, v1, v3, v4, v1}, Lec/a0;->d(IIII)V

    move v3, v1

    :goto_3
    const/16 v6, 0xa

    if-ge v3, v6, :cond_8

    const/4 v6, 0x1

    shl-int v7, v6, v3

    iget v8, v2, Lec/e0;->a:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move v6, v1

    :goto_4
    if-nez v6, :cond_5

    goto :goto_6

    :cond_5
    if-eq v3, v4, :cond_7

    const/4 v6, 0x7

    if-eq v3, v6, :cond_6

    move v6, v3

    goto :goto_5

    :cond_6
    move v6, v4

    goto :goto_5

    :cond_7
    const/4 v6, 0x3

    :goto_5
    iget-object v7, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {v7, v6}, Lkc/f;->writeShort(I)Lkc/f;

    iget-object v6, p0, Lec/a0;->e:Lkc/f;

    iget-object v7, v2, Lec/e0;->b:[I

    aget v7, v7, v3

    invoke-interface {v6, v7}, Lkc/f;->writeInt(I)Lkc/f;

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {v2}, Lkc/f;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object p0, v0, Lec/t;->u:Lec/e0;

    invoke-virtual {p0}, Lec/e0;->a()I

    move-result p0

    const v2, 0xffff

    if-eq p0, v2, :cond_9

    iget-object v3, v0, Lec/t;->B:Lec/a0;

    sub-int/2addr p0, v2

    int-to-long v6, p0

    invoke-virtual {v3, v1, v6, v7}, Lec/a0;->y(IJ)V

    :cond_9
    invoke-virtual {v5}, Lbc/f;->f()Lbc/c;

    move-result-object p0

    iget-object v1, v0, Lec/t;->d:Ljava/lang/String;

    iget-object v0, v0, Lec/t;->C:Lec/o;

    new-instance v2, Lbc/b;

    invoke-direct {v2, v0, v1}, Lbc/b;-><init>(Lec/o;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lbc/c;->c(Lbc/a;J)V

    return-void

    :cond_a
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_d
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_e
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v2, v1, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v2, v2, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v2, v2, Lokhttp3/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v2, v2, Lokhttp3/a;->a:Lokhttp3/u;

    iget v2, v2, Lokhttp3/u;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", proxy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lokhttp3/p0;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hostAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lokhttp3/p0;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/k;->d:Lokhttp3/q;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lokhttp3/q;->c:Lokhttp3/h;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/internal/connection/k;->e:Lokhttp3/Protocol;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
