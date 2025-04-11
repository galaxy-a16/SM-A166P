.class public abstract Lw1/j;
.super Lv1/h;
.source "SourceFile"


# instance fields
.field public final p:Ljava/lang/Object;

.field public q:Lw1/i;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lw1/i;Lw1/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lv1/h;-><init>(ILjava/lang/String;Lw1/i;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/j;->p:Ljava/lang/Object;

    iput-object p3, p0, Lw1/j;->q:Lw1/i;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lw1/j;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lw1/j;->q:Lw1/i;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lw1/i;->a:Z

    iput-object p1, p0, Lw1/i;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final l(Lv1/f;)Lv1/j;
    .locals 2

    iget-object p0, p1, Lv1/f;->b:[B

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lv1/f;->c:Ljava/util/Map;

    invoke-static {v1}, Lg2/m;->m(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {p1}, Lg2/m;->l(Lv1/f;)Lv1/a;

    move-result-object p0

    new-instance p1, Lv1/j;

    invoke-direct {p1, v0, p0}, Lv1/j;-><init>(Ljava/lang/Object;Lv1/a;)V

    return-object p1
.end method
