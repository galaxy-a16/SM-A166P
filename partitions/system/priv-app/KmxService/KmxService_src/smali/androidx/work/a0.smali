.class public final Landroidx/work/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/Worker;


# direct methods
.method public constructor <init>(Landroidx/work/Worker;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/a0;->a:Landroidx/work/Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Landroidx/work/a0;->a:Landroidx/work/Worker;

    :try_start_0
    invoke-virtual {p0}, Landroidx/work/Worker;->doWork()Landroidx/work/m;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/i;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/i;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/i;->j(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
