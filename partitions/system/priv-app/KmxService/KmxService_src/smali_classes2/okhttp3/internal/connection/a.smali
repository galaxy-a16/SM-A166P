.class public final Lokhttp3/internal/connection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# static fields
.field public static final a:Lokhttp3/internal/connection/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/internal/connection/a;

    invoke-direct {v0}, Lokhttp3/internal/connection/a;-><init>()V

    sput-object v0, Lokhttp3/internal/connection/a;->a:Lokhttp3/internal/connection/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcc/f;)Lokhttp3/k0;
    .locals 10

    iget-object p0, p1, Lcc/f;->b:Lokhttp3/internal/connection/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->l:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->k:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    monitor-exit p0

    iget-object v0, p0, Lokhttp3/internal/connection/i;->f:Lokhttp3/internal/connection/e;

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    iget-object v9, p0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    const-string v2, "client"

    invoke-static {v9, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    iget v3, p1, Lcc/f;->g:I

    iget v4, p1, Lcc/f;->h:I

    iget v5, p1, Lcc/f;->i:I

    iget-boolean v6, v9, Lokhttp3/b0;->f:Z

    iget-object v2, p1, Lcc/f;->f:Lokhttp3/e0;

    iget-object v2, v2, Lokhttp3/e0;->c:Ljava/lang/String;

    const-string v7, "GET"

    invoke-static {v2, v7}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/connection/e;->a(IIIZZ)Lokhttp3/internal/connection/k;

    move-result-object v2

    invoke-virtual {v2, v9, p1}, Lokhttp3/internal/connection/k;->j(Lokhttp3/b0;Lcc/f;)Lcc/d;

    move-result-object v2
    :try_end_1
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v3, Lokhttp3/internal/connection/d;

    iget-object v4, p0, Lokhttp3/internal/connection/i;->b:Le9/a;

    invoke-direct {v3, p0, v4, v0, v2}, Lokhttp3/internal/connection/d;-><init>(Lokhttp3/internal/connection/i;Le9/a;Lokhttp3/internal/connection/e;Lcc/d;)V

    iput-object v3, p0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/d;

    iput-object v3, p0, Lokhttp3/internal/connection/i;->n:Lokhttp3/internal/connection/d;

    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Lokhttp3/internal/connection/i;->j:Z

    iput-boolean v1, p0, Lokhttp3/internal/connection/i;->k:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    iget-boolean p0, p0, Lokhttp3/internal/connection/i;->m:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/16 v0, 0x3d

    invoke-static {p1, p0, v3, v8, v0}, Lcc/f;->a(Lcc/f;ILokhttp3/internal/connection/d;Lokhttp3/e0;I)Lcc/f;

    move-result-object p0

    iget-object p1, p1, Lcc/f;->f:Lokhttp3/e0;

    invoke-virtual {p0, p1}, Lcc/f;->b(Lokhttp3/e0;)Lokhttp3/k0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, Lokhttp3/internal/connection/e;->c(Ljava/io/IOException;)V

    new-instance p1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {p1, p0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/e;->c(Ljava/io/IOException;)V

    throw p0

    :cond_1
    invoke-static {}, Li4/f;->M()V

    throw v8

    :cond_2
    :try_start_3
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
