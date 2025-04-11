.class public final Li/b;
.super Lkotlin/reflect/x;
.source "SourceFile"


# static fields
.field public static volatile j:Li/b;

.field public static final k:Li/a;


# instance fields
.field public final i:Li/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Li/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li/a;-><init>(I)V

    sput-object v0, Li/b;->k:Li/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkotlin/reflect/x;-><init>()V

    new-instance v0, Li/d;

    invoke-direct {v0}, Li/d;-><init>()V

    iput-object v0, p0, Li/b;->i:Li/d;

    return-void
.end method

.method public static k()Li/b;
    .locals 2

    sget-object v0, Li/b;->j:Li/b;

    if-eqz v0, :cond_0

    sget-object v0, Li/b;->j:Li/b;

    return-object v0

    :cond_0
    const-class v0, Li/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li/b;->j:Li/b;

    if-nez v1, :cond_1

    new-instance v1, Li/b;

    invoke-direct {v1}, Li/b;-><init>()V

    sput-object v1, Li/b;->j:Li/b;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Li/b;->j:Li/b;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final l(Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, Li/b;->i:Li/d;

    iget-object v0, p0, Li/d;->k:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Li/d;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li/d;->k:Landroid/os/Handler;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Li/d;->k:Landroid/os/Handler;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Li/d;->k:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
