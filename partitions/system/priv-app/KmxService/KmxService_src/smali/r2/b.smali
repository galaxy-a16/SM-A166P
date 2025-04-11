.class public final synthetic Lr2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/a;
.implements Lt2/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lr2/b;->a:I

    iput-object p1, p0, Lr2/b;->d:Ljava/lang/Object;

    iput-object p2, p0, Lr2/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lr2/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt2/k;Ljava/lang/Object;Lo2/j;I)V
    .locals 0

    .line 2
    iput p4, p0, Lr2/b;->a:I

    iput-object p1, p0, Lr2/b;->d:Ljava/lang/Object;

    iput-object p2, p0, Lr2/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lr2/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PRAGMA page_size"

    const-string v4, "PRAGMA page_count"

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget v7, v0, Lr2/b;->a:I

    const/4 v8, 0x6

    const-string v9, "bytes"

    const/4 v10, 0x0

    iget-object v11, v0, Lr2/b;->c:Ljava/lang/Object;

    iget-object v12, v0, Lr2/b;->b:Ljava/lang/Object;

    iget-object v0, v0, Lr2/b;->d:Ljava/lang/Object;

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    check-cast v0, Lt2/k;

    check-cast v12, Ljava/util/List;

    check-cast v11, Lo2/j;

    move-object/from16 v2, p1

    check-cast v2, Landroid/database/Cursor;

    sget-object v3, Lt2/k;->f:Ll2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v7, 0x7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    new-instance v13, Lva/m;

    invoke-direct {v13}, Lva/m;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iput-object v14, v13, Lva/m;->f:Ljava/lang/Object;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lva/m;->l(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v13, Lva/m;->d:Ljava/lang/Object;

    const/4 v14, 0x3

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v13, Lva/m;->e:Ljava/lang/Object;

    const/4 v14, 0x4

    if-eqz v7, :cond_2

    new-instance v7, Lo2/m;

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    sget-object v14, Lt2/k;->f:Ll2/c;

    goto :goto_2

    :cond_1
    new-instance v15, Ll2/c;

    invoke-direct {v15, v14}, Ll2/c;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    :goto_2
    const/4 v15, 0x5

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    invoke-direct {v7, v14, v15}, Lo2/m;-><init>(Ll2/c;[B)V

    goto :goto_4

    :cond_2
    new-instance v7, Lo2/m;

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    sget-object v14, Lt2/k;->f:Ll2/c;

    goto :goto_3

    :cond_3
    new-instance v15, Ll2/c;

    invoke-direct {v15, v14}, Ll2/c;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    :goto_3
    invoke-virtual {v0}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v16, "event_payloads"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "event_id = ?"

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "sequence_num"

    move-object/from16 v19, v5

    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    new-instance v15, Lcom/google/firebase/concurrent/h;

    const/16 v6, 0xb

    invoke-direct {v15, v6}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-static {v5, v15}, Lt2/k;->z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v7, v14, v5}, Lo2/m;-><init>(Ll2/c;[B)V

    :goto_4
    invoke-virtual {v13, v7}, Lva/m;->k(Lo2/m;)V

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v13, Lva/m;->b:Ljava/lang/Object;

    :cond_4
    invoke-virtual {v13}, Lva/m;->b()Lo2/h;

    move-result-object v5

    new-instance v6, Lt2/b;

    invoke-direct {v6, v3, v4, v11, v5}, Lt2/b;-><init>(JLo2/j;Lo2/h;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v10

    :pswitch_1
    check-cast v0, Lt2/k;

    check-cast v11, Ljava/lang/String;

    check-cast v12, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lt2/k;->f:Ll2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v1, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Lt2/g;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lt2/g;-><init>(Lt2/k;I)V

    invoke-static {v2, v3}, Lt2/k;->z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;

    const-string v0, "DELETE FROM events WHERE num_attempts >= 16"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-object v10

    :pswitch_2
    check-cast v0, Lt2/k;

    check-cast v12, Lo2/h;

    check-cast v11, Lo2/j;

    move-object/from16 v5, p1

    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    sget-object v6, Lt2/k;->f:Ll2/c;

    invoke-virtual {v0}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v6

    invoke-virtual {v0}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v3

    mul-long/2addr v3, v6

    iget-object v6, v0, Lt2/k;->d:Lt2/a;

    iget-wide v7, v6, Lt2/a;->a:J

    cmp-long v3, v3, v7

    if-ltz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    move v3, v1

    :goto_5
    if-eqz v3, :cond_7

    sget-object v1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    iget-object v2, v12, Lo2/h;->a:Ljava/lang/String;

    new-instance v3, Ls2/h;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5, v2, v1}, Ls2/h;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lt2/k;->d(Lt2/i;)Ljava/lang/Object;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_b

    :cond_7
    invoke-static {v5, v11}, Lt2/k;->b(Landroid/database/sqlite/SQLiteDatabase;Lo2/j;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_6

    :cond_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "backend_name"

    iget-object v4, v11, Lo2/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v11, Lo2/j;->c:Lcom/google/android/datatransport/Priority;

    invoke-static {v3}, Lw2/a;->a(Lcom/google/android/datatransport/Priority;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "priority"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "next_request_ms"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, v11, Lo2/j;->b:[B

    if-eqz v3, :cond_9

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extras"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v3, "transport_contexts"

    invoke-virtual {v5, v3, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    :goto_6
    iget-object v0, v12, Lo2/h;->c:Lo2/m;

    iget-object v0, v0, Lo2/m;->b:[B

    array-length v7, v0

    iget v6, v6, Lt2/a;->e:I

    if-gt v7, v6, :cond_a

    const/4 v7, 0x1

    goto :goto_7

    :cond_a
    move v7, v1

    :goto_7
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "context_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "transport_name"

    iget-object v4, v12, Lo2/h;->a:Ljava/lang/String;

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, v12, Lo2/h;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "timestamp_ms"

    invoke-virtual {v8, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v3, v12, Lo2/h;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "uptime_ms"

    invoke-virtual {v8, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, v12, Lo2/h;->c:Lo2/m;

    iget-object v3, v3, Lo2/m;->a:Ll2/c;

    iget-object v3, v3, Ll2/c;->a:Ljava/lang/String;

    const-string v4, "payload_encoding"

    invoke-virtual {v8, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "code"

    iget-object v4, v12, Lo2/h;->b:Ljava/lang/Integer;

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "num_attempts"

    invoke-virtual {v8, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "inline"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v7, :cond_b

    move-object v1, v0

    goto :goto_8

    :cond_b
    new-array v1, v1, [B

    :goto_8
    const-string v2, "payload"

    invoke-virtual {v8, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "events"

    invoke-virtual {v5, v1, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-string v3, "event_id"

    if-nez v7, :cond_c

    array-length v4, v0

    int-to-double v7, v4

    int-to-double v13, v6

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    const/4 v7, 0x1

    :goto_9
    if-gt v7, v4, :cond_c

    add-int/lit8 v8, v7, -0x1

    mul-int/2addr v8, v6

    mul-int v11, v7, v6

    array-length v13, v0

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v0, v8, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "sequence_num"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v11, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v8, "event_payloads"

    invoke-virtual {v5, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_c
    iget-object v0, v12, Lo2/h;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "name"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "value"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "event_metadata"

    invoke-virtual {v5, v4, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_a

    :cond_d
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_b
    return-object v0

    :goto_c
    check-cast v0, Lt2/k;

    check-cast v11, Ljava/util/Map;

    check-cast v12, Lp1/i;

    move-object/from16 v2, p1

    check-cast v2, Landroid/database/Cursor;

    sget-object v5, Lt2/k;->f:Ll2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sget-object v9, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->REASON_UNKNOWN:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v9}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v10

    if-ne v7, v10, :cond_e

    goto :goto_f

    :cond_e
    sget-object v10, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MESSAGE_TOO_OLD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v13

    if-ne v7, v13, :cond_f

    :goto_e
    move-object v9, v10

    goto :goto_f

    :cond_f
    sget-object v10, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v13

    if-ne v7, v13, :cond_10

    goto :goto_e

    :cond_10
    sget-object v10, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->PAYLOAD_TOO_BIG:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v13

    if-ne v7, v13, :cond_11

    goto :goto_e

    :cond_11
    sget-object v10, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MAX_RETRIES_REACHED:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v13

    if-ne v7, v13, :cond_12

    goto :goto_e

    :cond_12
    sget-object v10, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v13

    if-ne v7, v13, :cond_13

    goto :goto_e

    :cond_13
    sget-object v10, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->SERVER_ERROR:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v13

    if-ne v7, v13, :cond_14

    goto :goto_e

    :cond_14
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v10, "SQLiteEventStore"

    const-string v13, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    invoke-static {v7, v10, v13}, Lcom/fasterxml/jackson/annotation/i0;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    const/4 v7, 0x2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v10, Lq2/c;

    invoke-direct {v10, v13, v14, v9}, Lq2/c;-><init>(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_16
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    sget v6, Lq2/d;->c:I

    new-instance v6, Lp1/e;

    invoke-direct {v6, v8}, Lp1/e;-><init>(I)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v6, Lp1/e;->b:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iput-object v5, v6, Lp1/e;->c:Ljava/lang/Object;

    new-instance v5, Lq2/d;

    iget-object v7, v6, Lp1/e;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v6, v6, Lp1/e;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lq2/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v6, v12, Lp1/i;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_17
    iget-object v2, v0, Lt2/k;->b:Lv2/a;

    check-cast v2, Lv2/b;

    invoke-virtual {v2}, Lv2/b;->a()J

    move-result-wide v5

    new-instance v2, Lt2/h;

    invoke-direct {v2, v1, v5, v6}, Lt2/h;-><init>(IJ)V

    invoke-virtual {v0, v2}, Lt2/k;->d(Lt2/i;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq2/f;

    iput-object v1, v12, Lp1/i;->a:Ljava/lang/Object;

    sget v1, Lq2/b;->b:I

    new-instance v1, Ld/s0;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ld/s0;-><init>(I)V

    invoke-virtual {v0}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    invoke-virtual {v0}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    mul-long/2addr v2, v4

    sget-object v4, Lt2/a;->f:Lt2/a;

    iget-wide v4, v4, Lt2/a;->a:J

    new-instance v6, Lq2/e;

    invoke-direct {v6, v2, v3, v4, v5}, Lq2/e;-><init>(JJ)V

    iput-object v6, v1, Ld/s0;->b:Ljava/lang/Object;

    new-instance v2, Lq2/b;

    iget-object v1, v1, Ld/s0;->b:Ljava/lang/Object;

    check-cast v1, Lq2/e;

    invoke-direct {v2, v1}, Lq2/b;-><init>(Lq2/e;)V

    iput-object v2, v12, Lp1/i;->c:Ljava/lang/Object;

    iget-object v0, v0, Lt2/k;->e:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v12, Lp1/i;->d:Ljava/lang/Object;

    new-instance v0, Lq2/a;

    iget-object v1, v12, Lp1/i;->a:Ljava/lang/Object;

    check-cast v1, Lq2/f;

    iget-object v2, v12, Lp1/i;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v12, Lp1/i;->c:Ljava/lang/Object;

    check-cast v3, Lq2/b;

    iget-object v4, v12, Lp1/i;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lq2/a;-><init>(Lq2/f;Ljava/util/List;Lq2/b;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final execute()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lr2/b;->d:Ljava/lang/Object;

    check-cast v0, Lr2/c;

    iget-object v1, p0, Lr2/b;->c:Ljava/lang/Object;

    check-cast v1, Lo2/j;

    iget-object p0, p0, Lr2/b;->b:Ljava/lang/Object;

    check-cast p0, Lo2/h;

    iget-object v2, v0, Lr2/c;->d:Lt2/d;

    check-cast v2, Lt2/k;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, v1, Lo2/j;->c:Lcom/google/android/datatransport/Priority;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lo2/h;->a:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v8, v1, Lo2/j;->a:Ljava/lang/String;

    aput-object v8, v4, v5

    const-string v5, "SQLiteEventStore"

    invoke-static {v5}, Lcom/fasterxml/jackson/annotation/i0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Storing event with priority=%s, name=%s for destination %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Lr2/b;

    invoke-direct {v3, v2, p0, v1, v7}, Lr2/b;-><init>(Lt2/k;Ljava/lang/Object;Lo2/j;I)V

    invoke-virtual {v2, v3}, Lt2/k;->d(Lt2/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    iget-object p0, v0, Lr2/c;->a:Ls2/l;

    check-cast p0, Ls2/d;

    invoke-virtual {p0, v1, v7, v6}, Ls2/d;->a(Lo2/j;IZ)V

    const/4 p0, 0x0

    return-object p0
.end method
