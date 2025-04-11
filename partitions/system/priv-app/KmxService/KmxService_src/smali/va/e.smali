.class public final Lva/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly7/b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln/e;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln/e;-><init>(II)V

    iput-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    new-instance v0, Ll/j;

    invoke-direct {v0}, Ll/j;-><init>()V

    iput-object v0, p0, Lva/e;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lva/e;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lva/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ls9/a;Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/e;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva/e;->b:Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lva/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Lva/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/i3;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lva/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "default_event_parameters"

    invoke-static {p1}, Lva/n;->f(Ljava/lang/String;)V

    iput-object p1, p0, Lva/e;->a:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lva/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/e;->a:Ljava/lang/Object;

    new-instance v0, Lp1/b;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, v1}, Lp1/b;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lva/e;->b:Ljava/lang/Object;

    new-instance v0, Lva/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lva/d;-><init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;I)V

    iput-object v0, p0, Lva/e;->c:Ljava/lang/Object;

    new-instance v0, Lva/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lva/d;-><init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;I)V

    iput-object v0, p0, Lva/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf9/b;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lt6/a;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/e;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva/e;->b:Ljava/lang/Object;

    iput-object p3, p0, Lva/e;->c:Ljava/lang/Object;

    iput-object p4, p0, Lva/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/e;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ly7/d;
    .locals 0

    iget-object p0, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast p0, Lt6/a;

    return-object p0
.end method

.method public final b()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .locals 0

    iget-object p0, p0, Lva/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    return-object p0
.end method

.method public final c()Lva/e;
    .locals 1

    new-instance v0, Lva/e;

    iget-object p0, p0, Lva/e;->a:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lva/e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final d()I
    .locals 3

    const-string v0, "SELECT COUNT(id) FROM empty_index"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object p0, p0, Lva/e;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw v1
.end method

.method public final e(J)V
    .locals 3

    iget-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, p0, Lva/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/room/f0;

    invoke-virtual {v1}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1, p2}, La1/g;->W(IJ)V

    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, La1/i;->v()I

    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lva/e;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/room/f0;

    invoke-virtual {p0, v1}, Landroidx/room/f0;->release(La1/i;)V

    return-void

    :catchall_0
    move-exception p1

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lva/e;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/room/f0;

    invoke-virtual {p0, v1}, Landroidx/room/f0;->release(La1/i;)V

    throw p1
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/room/f0;

    invoke-virtual {v1}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, La1/i;->v()I

    move-object v2, v0

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/room/f0;

    invoke-virtual {p0, v1}, Landroidx/room/f0;->release(La1/i;)V

    return-void

    :catchall_0
    move-exception v2

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/room/f0;

    invoke-virtual {p0, v1}, Landroidx/room/f0;->release(La1/i;)V

    throw v2
.end method

.method public final g(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lva/e;->b:Ljava/lang/Object;

    check-cast v0, Ll/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lva/e;->g(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This graph contains cyclic dependencies"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lva/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 4

    const-string v0, "SELECT `index` FROM empty_index ORDER BY id ASC"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object p0, p0, Lva/e;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw v1
.end method

.method public final i()Lwa/b;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM empty_index ORDER BY id ASC LIMIT 1"

    invoke-static {v0, v1}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object p0, p0, Lva/e;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v1, "id"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "index"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Lwa/b;

    invoke-direct {v3, v2}, Lwa/b;-><init>(I)V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v3, Lwa/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw v1
.end method

.method public final j(Lwa/b;)V
    .locals 2

    iget-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object p0, p0, Lva/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/room/g;

    invoke-virtual {p0, p1}, Landroidx/room/g;->insert(Ljava/lang/Object;)V

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p0
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lva/e;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-object p1, p0, Lva/e;->b:Ljava/lang/Object;

    return v2

    :cond_0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lva/e;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    iput-object p1, p0, Lva/e;->c:Ljava/lang/Object;

    return v2

    :cond_2
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashSet;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lva/e;->d:Ljava/lang/Object;

    iget-object v2, p0, Lva/e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    iget-object v2, p0, Lva/e;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p0, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final l()Landroid/os/Bundle;
    .locals 11

    iget-object v0, p0, Lva/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/i3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lva/e;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v4, :cond_8

    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "n"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "t"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v8, 0x64

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v8, :cond_3

    const/16 v8, 0x6c

    if-eq v7, v8, :cond_2

    const/16 v8, 0x73

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v0

    goto :goto_2

    :cond_2
    const-string v7, "l"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v9

    goto :goto_2

    :cond_3
    const-string v7, "d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v10

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v7, -0x1

    :goto_2
    const-string v8, "v"

    if-eqz v7, :cond_7

    if-eq v7, v10, :cond_6

    if-eq v7, v9, :cond_5

    :try_start_2
    iget-object v4, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/i3;

    iget-object v4, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Unrecognized persisted bundle type. Type"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    :try_start_3
    iget-object v4, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/i3;

    iget-object v4, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Error reading value from SharedPreferences. Value dropped"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    iput-object v1, p0, Lva/e;->c:Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    iget-object v0, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/i3;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Error loading bundle from SharedPreferences. Values will be lost"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_9
    :goto_4
    iget-object v0, p0, Lva/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_a

    iget-object v0, p0, Lva/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lva/e;->c:Ljava/lang/Object;

    :cond_a
    :goto_5
    iget-object p0, p0, Lva/e;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public final m(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/i3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result v1

    iget-object v2, p0, Lva/e;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "n"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "v"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v4, v5, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "t"

    if-eqz v4, :cond_3

    :try_start_1
    const-string v4, "s"

    :goto_1
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    instance-of v4, v5, Ljava/lang/Long;

    if-eqz v4, :cond_4

    const-string v4, "l"

    goto :goto_1

    :cond_4
    instance-of v4, v5, Ljava/lang/Double;

    if-eqz v4, :cond_5

    const-string v4, "d"

    goto :goto_1

    :goto_2
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/i3;

    iget-object v4, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v6, "Cannot serialize bundle value to SharedPreferences. Type"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v5, p0, Lva/e;->d:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/measurement/internal/i3;

    iget-object v5, v5, Lb0/h;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v6, "Cannot serialize bundle value to SharedPreferences"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object p1, p0, Lva/e;->c:Ljava/lang/Object;

    return-void
.end method
