.class public final Lxa/b;
.super Lqa/a;
.source "SourceFile"


# instance fields
.field public final a:Lva/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lqa/a;-><init>()V

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->e(Landroid/content/Context;)Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->c()Lva/a;

    move-result-object p1

    iput-object p1, p0, Lxa/b;->a:Lva/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lxa/b;->a:Lva/a;

    check-cast p0, Lva/c;

    invoke-virtual {p0}, Lva/c;->a()Lwa/a;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lwa/a;->b:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;

    const-string v0, "There is no block."

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;

    const-string v1, "Failed to get last block."

    invoke-direct {v0, v1, p0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final c()Z
    .locals 4

    :try_start_0
    iget-object p0, p0, Lxa/b;->a:Lva/a;

    check-cast p0, Lva/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SELECT EXISTS (SELECT 1 FROM block)"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object p0, p0, Lva/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    xor-int/lit8 p0, v1, 0x1

    return p0

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;

    const-string v1, "Failed to check empty."

    invoke-direct {v0, v1, p0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
