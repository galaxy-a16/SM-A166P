.class public final Lgc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc/l;


# instance fields
.field public a:Lgc/l;

.field public final b:Lgc/j;


# direct methods
.method public constructor <init>(Lgc/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgc/k;->b:Lgc/j;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    iget-object p0, p0, Lgc/k;->b:Lgc/j;

    invoke-interface {p0, p1}, Lgc/j;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    return p0
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgc/k;->a:Lgc/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgc/k;->b:Lgc/j;

    invoke-interface {v0, p1}, Lgc/j;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgc/k;->b:Lgc/j;

    invoke-interface {v0, p1}, Lgc/j;->b(Ljavax/net/ssl/SSLSocket;)Lgc/l;

    move-result-object v0

    iput-object v0, p0, Lgc/k;->a:Lgc/l;

    :cond_0
    iget-object v0, p0, Lgc/k;->a:Lgc/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lgc/l;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string v0, "protocols"

    invoke-static {p3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgc/k;->a:Lgc/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgc/k;->b:Lgc/j;

    invoke-interface {v0, p1}, Lgc/j;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgc/k;->b:Lgc/j;

    invoke-interface {v0, p1}, Lgc/j;->b(Ljavax/net/ssl/SSLSocket;)Lgc/l;

    move-result-object v0

    iput-object v0, p0, Lgc/k;->a:Lgc/l;

    :cond_0
    iget-object v0, p0, Lgc/k;->a:Lgc/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lgc/l;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
