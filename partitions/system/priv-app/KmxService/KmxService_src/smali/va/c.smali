.class public final Lva/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lva/a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lva/b;

.field public final c:Lua/a;

.field public final d:Lp1/u;


# direct methods
.method public constructor <init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lua/a;

    invoke-direct {v0}, Lua/a;-><init>()V

    iput-object v0, p0, Lva/c;->c:Lua/a;

    iput-object p1, p0, Lva/c;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lva/b;

    invoke-direct {v0, p0, p1}, Lva/b;-><init>(Lva/c;Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V

    iput-object v0, p0, Lva/c;->b:Lva/b;

    new-instance v0, Lp1/u;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lp1/u;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lva/c;->d:Lp1/u;

    return-void
.end method


# virtual methods
.method public final a()Lwa/a;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM block ORDER BY number DESC LIMIT 1"

    invoke-static {v0, v1}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object v1, p0, Lva/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {v1, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "number"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "block"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    :goto_0
    iget-object p0, p0, Lva/c;->c:Lua/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v5}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->parseFrom([B)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p0
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string v3, "ROOM-CONVERTER"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lla/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p0

    :goto_1
    new-instance v5, Lwa/a;

    invoke-direct {v5, v2, p0}, Lwa/a;-><init>(ILcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v5

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw p0
.end method

.method public final b(II)Ljava/util/ArrayList;
    .locals 6

    const-string v0, "SELECT * FROM block WHERE ? <= number AND number < ? ORDER BY number ASC"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/d0;->W(IJ)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/d0;->W(IJ)V

    iget-object p1, p0, Lva/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {p1, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "number"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v1, "block"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lva/c;->c:Lua/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v4}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->parseFrom([B)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v4
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "ROOM-CONVERTER"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lla/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v4

    :goto_2
    new-instance v5, Lwa/a;

    invoke-direct {v5, v3, v4}, Lwa/a;-><init>(ILcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v2

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw p0
.end method
