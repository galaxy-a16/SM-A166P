.class public final Landroidx/work/impl/b;
.super Landroidx/room/x;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/work/impl/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/b;

    invoke-direct {v0}, Landroidx/work/impl/b;-><init>()V

    sput-object v0, Landroidx/work/impl/b;->a:Landroidx/work/impl/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La1/b;)V
    .locals 4

    const-string p0, "db"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, La1/b;->h()V

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/work/impl/y;->a:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    invoke-interface {p1}, La1/b;->X()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, La1/b;->g()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, La1/b;->g()V

    throw p0
.end method
