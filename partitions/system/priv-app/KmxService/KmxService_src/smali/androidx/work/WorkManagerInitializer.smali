.class public final Landroidx/work/WorkManagerInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc1/b;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WrkMgrInitializer"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/WorkManagerInitializer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p0

    sget-object v0, Landroidx/work/WorkManagerInitializer;->a:Ljava/lang/String;

    const-string v1, "Initializing WorkManager with default configuration."

    invoke-virtual {p0, v0, v1}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ll4/e;

    invoke-direct {p0}, Ll4/e;-><init>()V

    new-instance v0, Landroidx/work/b;

    invoke-direct {v0, p0}, Landroidx/work/b;-><init>(Ll4/e;)V

    sget-object p0, Landroidx/work/impl/d0;->B:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v1, Landroidx/work/impl/d0;->z:Landroidx/work/impl/d0;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/work/impl/d0;->A:Landroidx/work/impl/d0;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/d0;->A:Landroidx/work/impl/d0;

    if-nez v2, :cond_2

    new-instance v2, Landroidx/work/impl/d0;

    new-instance v3, Lp1/v;

    iget-object v4, v0, Landroidx/work/b;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v4}, Lp1/v;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {v2, v1, v0, v3}, Landroidx/work/impl/d0;-><init>(Landroid/content/Context;Landroidx/work/b;Lp1/v;)V

    sput-object v2, Landroidx/work/impl/d0;->A:Landroidx/work/impl/d0;

    :cond_2
    sget-object v0, Landroidx/work/impl/d0;->A:Landroidx/work/impl/d0;

    sput-object v0, Landroidx/work/impl/d0;->z:Landroidx/work/impl/d0;

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Landroidx/work/impl/d0;->A(Landroid/content/Context;)Landroidx/work/impl/d0;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
