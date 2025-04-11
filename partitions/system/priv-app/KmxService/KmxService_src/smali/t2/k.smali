.class public final Lt2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt2/d;
.implements Lu2/b;
.implements Lt2/c;


# static fields
.field public static final f:Ll2/c;


# instance fields
.field public final a:Lt2/n;

.field public final b:Lv2/a;

.field public final c:Lv2/a;

.field public final d:Lt2/a;

.field public final e:Lob/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll2/c;

    const-string v1, "proto"

    invoke-direct {v0, v1}, Ll2/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt2/k;->f:Ll2/c;

    return-void
.end method

.method public constructor <init>(Lv2/a;Lv2/a;Lt2/a;Lt2/n;Lob/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lt2/k;->a:Lt2/n;

    iput-object p1, p0, Lt2/k;->b:Lv2/a;

    iput-object p2, p0, Lt2/k;->c:Lv2/a;

    iput-object p3, p0, Lt2/k;->d:Lt2/a;

    iput-object p5, p0, Lt2/k;->e:Lob/a;

    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Lo2/j;)Ljava/lang/Long;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backend_name = ? and priority = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p1, Lo2/j;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Lo2/j;->c:Lcom/google/android/datatransport/Priority;

    invoke-static {v3}, Lw2/a;->a(Lcom/google/android/datatransport/Priority;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lo2/j;->b:[B

    if-eqz p1, :cond_0

    const-string v2, " and extras = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, " and extras is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v6, "transport_contexts"

    const-string p1, "_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array p1, v4, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    new-instance p1, Lcom/google/firebase/concurrent/h;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-static {p0, p1}, Lt2/k;->z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static y(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/b;

    iget-wide v1, v1, Lt2/b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-interface {p1, p0}, Lt2/i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    iget-object v0, p0, Lt2/k;->a:Lt2/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, La5/a;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, La5/a;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lcom/google/firebase/concurrent/h;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lt2/k;->t(La5/a;Lcom/google/firebase/concurrent/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lt2/k;->a:Lt2/n;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public final d(Lt2/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1, p0}, Lt2/i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public final i(Landroid/database/sqlite/SQLiteDatabase;Lo2/j;I)Ljava/util/ArrayList;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lt2/k;->b(Landroid/database/sqlite/SQLiteDatabase;Lo2/j;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v3, "events"

    const-string v4, "_id"

    const-string v5, "transport_name"

    const-string v6, "timestamp_ms"

    const-string v7, "uptime_ms"

    const-string v8, "payload_encoding"

    const-string v9, "payload"

    const-string v10, "code"

    const-string v11, "inline"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "context_id = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p3, Lr2/b;

    const/4 v1, 0x3

    invoke-direct {p3, p0, v0, p2, v1}, Lr2/b;-><init>(Lt2/k;Ljava/lang/Object;Lo2/j;I)V

    invoke-static {p1, p3}, Lt2/k;->z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;

    return-object v0
.end method

.method public final t(La5/a;Lcom/google/firebase/concurrent/h;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lt2/k;->c:Lv2/a;

    check-cast v0, Lv2/b;

    invoke-virtual {v0}, Lv2/b;->a()J

    move-result-wide v1

    :goto_0
    :try_start_0
    iget v3, p1, La5/a;->a:I

    iget-object v4, p1, La5/a;->b:Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v4, Lt2/n;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_2

    :goto_1
    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    :goto_2
    return-object p0

    :catch_0
    move-exception v3

    invoke-virtual {v0}, Lv2/b;->a()J

    move-result-wide v4

    iget-object v6, p0, Lt2/k;->d:Lt2/a;

    iget v6, v6, Lt2/a;->c:I

    int-to-long v6, v6

    add-long/2addr v6, v1

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {p2, v3}, Lcom/google/firebase/concurrent/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final x(Lu2/a;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, La5/a;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2}, La5/a;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/google/firebase/concurrent/h;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lt2/k;->t(La5/a;Lcom/google/firebase/concurrent/h;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {p1}, Lu2/a;->execute()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method
