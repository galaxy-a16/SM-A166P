.class public final Lr3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr3/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr3/o;

    invoke-direct {v0}, Lr3/o;-><init>()V

    iput-object v0, p0, Lr3/i;->a:Lr3/o;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lr3/i;->a:Lr3/o;

    invoke-virtual {p0, p1}, Lr3/o;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 2

    iget-object p0, p0, Lr3/i;->a:Lr3/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Exception must not be null"

    if-eqz p1, :cond_1

    iget-object v1, p0, Lr3/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lr3/o;->c:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr3/o;->c:Z

    iput-object p1, p0, Lr3/o;->f:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {p1, p0}, Lz9/a;->f(Lr3/h;)V

    move p0, v0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lr3/i;->a:Lr3/o;

    iget-object v0, p0, Lr3/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr3/o;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lr3/o;->c:Z

    iput-object p1, p0, Lr3/o;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {p1, p0}, Lz9/a;->f(Lr3/h;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
