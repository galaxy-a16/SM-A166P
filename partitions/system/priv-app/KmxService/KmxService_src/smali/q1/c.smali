.class public final Lq1/c;
.super Lq1/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroidx/work/impl/d0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Landroidx/work/impl/d0;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lq1/c;->b:Landroidx/work/impl/d0;

    iput-object p2, p0, Lq1/c;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lq1/c;->d:Z

    invoke-direct {p0}, Lq1/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object v0, p0, Lq1/c;->b:Landroidx/work/impl/d0;

    iget-object v1, v0, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v2

    iget-object v3, p0, Lq1/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lp1/s;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lq1/d;->a(Landroidx/work/impl/d0;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-boolean p0, p0, Lq1/c;->d:Z

    if-eqz p0, :cond_1

    iget-object p0, v0, Landroidx/work/impl/d0;->q:Landroidx/work/b;

    iget-object v1, v0, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Landroidx/work/impl/d0;->t:Ljava/util/List;

    invoke-static {p0, v1, v0}, Landroidx/work/impl/s;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p0
.end method
