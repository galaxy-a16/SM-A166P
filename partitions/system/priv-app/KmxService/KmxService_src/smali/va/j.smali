.class public final Lva/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lva/g;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lva/h;

.field public final c:Lua/a;

.field public final d:Lva/i;


# direct methods
.method public constructor <init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lua/a;

    invoke-direct {v0}, Lua/a;-><init>()V

    iput-object v0, p0, Lva/j;->c:Lua/a;

    iput-object p1, p0, Lva/j;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lva/h;

    invoke-direct {v0, p0, p1}, Lva/h;-><init>(Lva/j;Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V

    iput-object v0, p0, Lva/j;->b:Lva/h;

    new-instance v0, Lva/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lva/i;-><init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;I)V

    new-instance v0, Lva/i;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lva/i;-><init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;I)V

    iput-object v0, p0, Lva/j;->d:Lva/i;

    return-void
.end method


# virtual methods
.method public final a(I)Lwa/d;
    .locals 5

    const-string v0, "SELECT * FROM seal WHERE ? = block_number LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/d0;->W(IJ)V

    iget-object p1, p0, Lva/j;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {p1, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "block_number"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "seal"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    :goto_0
    iget-object p0, p0, Lva/j;->c:Lua/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v4}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->parseFrom([B)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "ROOM-CONVERTER"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lla/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    :goto_1
    new-instance v4, Lwa/d;

    invoke-direct {v4, v1, p0}, Lwa/d;-><init>(ILcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v4

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw p0
.end method
