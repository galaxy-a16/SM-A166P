.class public final Lz2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Lz2/l;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lz2/l;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lz2/l;->a:I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lz2/l;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/i;

    invoke-direct {v0, p0}, Lz2/i;-><init>(Lz2/l;)V

    iput-object v0, p0, Lz2/l;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lz2/l;->a:I

    iput-object p2, p0, Lz2/l;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lz2/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lz2/l;
    .locals 4

    const-class v0, Lz2/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/l;->e:Lz2/l;

    if-nez v1, :cond_0

    new-instance v1, Lz2/l;

    new-instance v2, Li/c;

    const-string v3, "MessengerIpcClient"

    invoke-direct {v2, v3}, Li/c;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lz2/l;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lz2/l;->e:Lz2/l;

    :cond_0
    sget-object p0, Lz2/l;->e:Lz2/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized b(Lz2/j;)Lr3/o;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lz2/k;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Queueing "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessengerIpcClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lz2/l;->d:Ljava/lang/Object;

    check-cast v0, Lz2/i;

    invoke-virtual {v0, p1}, Lz2/i;->d(Lz2/j;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lz2/i;

    invoke-direct {v0, p0}, Lz2/i;-><init>(Lz2/l;)V

    iput-object v0, p0, Lz2/l;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lz2/i;->d(Lz2/j;)Z

    :cond_1
    iget-object p1, p1, Lz2/k;->b:Lr3/i;

    iget-object p1, p1, Lr3/i;->a:Lr3/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
