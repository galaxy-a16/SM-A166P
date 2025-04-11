.class public final Lq1/b;
.super Lq1/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroidx/work/impl/d0;

.field public final synthetic c:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroidx/work/impl/d0;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lq1/b;->b:Landroidx/work/impl/d0;

    iput-object p2, p0, Lq1/b;->c:Ljava/util/UUID;

    invoke-direct {p0}, Lq1/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lq1/b;->b:Landroidx/work/impl/d0;

    iget-object v1, v0, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object p0, p0, Lq1/b;->c:Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lq1/d;->a(Landroidx/work/impl/d0;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, v0, Landroidx/work/impl/d0;->q:Landroidx/work/b;

    iget-object v1, v0, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Landroidx/work/impl/d0;->t:Ljava/util/List;

    invoke-static {p0, v1, v0}, Landroidx/work/impl/s;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p0
.end method
