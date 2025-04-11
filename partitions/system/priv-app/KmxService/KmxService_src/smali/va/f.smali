.class public final Lva/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/b;
.implements Lcom/google/gson/internal/l;
.implements Ly7/a;
.implements Lab/a;


# static fields
.field public static d:Lva/f;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lva/f;->a:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lva/f;->b:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/w0;

    invoke-direct {v0}, Ld/w0;-><init>()V

    iput-object v0, p0, Lva/f;->c:Ljava/lang/Object;

    iput-object p1, p0, Lva/f;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/s0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lva/f;->a:Ljava/lang/Object;

    iput-object p1, p0, Lva/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lva/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/k1;Landroidx/lifecycle/h1;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Ln0/a;->b:Ln0/a;

    invoke-direct {p0, p1, p2, v0}, Lva/f;-><init>(Landroidx/lifecycle/k1;Landroidx/lifecycle/h1;Ln0/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/k1;Landroidx/lifecycle/h1;Ln0/b;)V
    .locals 1

    .line 7
    const-string v0, "store"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/f;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lva/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0

    iput-object p1, p0, Lva/f;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lva/f;->b:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lva/f;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/f;->a:Ljava/lang/Object;

    new-instance v0, Lp1/b;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Lp1/b;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lva/f;->b:Ljava/lang/Object;

    new-instance v0, Lp1/u;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lp1/u;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lva/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lva/f;->c:Ljava/lang/Object;

    iput-object p1, p0, Lva/f;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lva/f;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lva/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput-object p1, p0, Lva/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lva/f;->a:Ljava/lang/Object;

    iput-object p3, p0, Lva/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le3/b;Lm1/e;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lva/f;->a:Ljava/lang/Object;

    iput-object p3, p0, Lva/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ln2/l;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lva/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lw1/g;)V
    .locals 1

    new-instance v0, Lw1/a;

    invoke-direct {v0}, Lw1/a;-><init>()V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/f;->b:Ljava/lang/Object;

    iput-object p1, p0, Lva/f;->a:Ljava/lang/Object;

    iput-object v0, p0, Lva/f;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/deser/std/b;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/std/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final c()Ls2/c;
    .locals 8

    iget-object v0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-string v0, " delta"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " maxAllowedDelay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_2

    const-string v1, " flags"

    invoke-static {v0, v1}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ls2/c;

    iget-object v1, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object p0, p0, Lva/f;->c:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Ljava/util/Set;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ls2/c;-><init>(JJLjava/util/Set;)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lva/f;->a:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(II)Z
    .locals 4

    const-string v0, "SELECT EXISTS(SELECT * FROM tree_node WHERE level = ? AND `index` = ?)"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    int-to-long v2, p1

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v2, v3}, Landroidx/room/d0;->W(IJ)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/d0;->W(IJ)V

    iget-object p2, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast p2, Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    move v1, p1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw p1
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/room/f0;

    invoke-virtual {v0}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v0

    iget-object v1, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, La1/i;->v()I

    iget-object v1, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    throw v1
.end method

.method public final g(Ljava/lang/Class;)Landroidx/lifecycle/f1;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lva/f;->h(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/f1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/f1;
    .locals 3

    const-string v0, "key"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/k1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/lifecycle/k1;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/f1;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/h1;

    instance-of p1, p0, Landroidx/lifecycle/j1;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/lifecycle/j1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    check-cast p0, Landroidx/lifecycle/c1;

    iget-object p1, p0, Landroidx/lifecycle/c1;->d:Landroidx/lifecycle/t;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/c1;->e:Landroidx/savedstate/d;

    invoke-static {p0}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-static {v0, p0, p1}, Landroidx/lifecycle/p0;->a(Landroidx/lifecycle/f1;Landroidx/savedstate/d;Landroidx/lifecycle/t;)V

    :cond_1
    const-string p0, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-static {v0, p0}, Li4/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ln0/e;

    iget-object v1, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast v1, Ln0/b;

    invoke-direct {v0, v1}, Ln0/e;-><init>(Ln0/b;)V

    sget-object v1, Ll4/e;->b:Ll4/e;

    iget-object v2, v0, Ln0/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/h1;

    invoke-interface {v1, p1, v0}, Landroidx/lifecycle/h1;->d(Ljava/lang/Class;Ln0/e;)Landroidx/lifecycle/f1;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/h1;

    invoke-interface {v0, p1}, Landroidx/lifecycle/h1;->a(Ljava/lang/Class;)Landroidx/lifecycle/f1;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/k1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/k1;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/f1;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/lifecycle/f1;->b()V

    :cond_3
    return-object p1
.end method

.method public final i(II)[B
    .locals 5

    const-string v0, "SELECT bytes FROM tree_node WHERE level = ? AND `index` = ?"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/d0;->W(IJ)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/d0;->W(IJ)V

    iget-object p1, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw p1
.end method

.method public final j(Ljava/lang/String;)Landroid/location/Location;
    .locals 3

    iget-object v0, p0, Lva/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast p0, Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "TwilightManager"

    const-string v0, "Failed to get last known location"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v2
.end method

.method public final k()Z
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lva/f;->c:Ljava/lang/Object;

    check-cast v0, Ld/s0;

    const-string v2, "gcm.n.noui"

    invoke-virtual {v0, v2}, Ld/s0;->n(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, v1, Lva/f;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v4, v1, Lva/f;->b:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v0, :cond_2

    iget v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v0, v4, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    return v3

    :cond_4
    iget-object v0, v1, Lva/f;->c:Ljava/lang/Object;

    check-cast v0, Ld/s0;

    const-string v4, "gcm.n.image"

    invoke-virtual {v0, v4}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "FirebaseMessaging"

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    new-instance v4, Lcom/google/firebase/messaging/n;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Lcom/google/firebase/messaging/n;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Not downloading image, bad URL: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    iget-object v0, v1, Lva/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lr3/i;

    invoke-direct {v7}, Lr3/i;-><init>()V

    new-instance v8, Ld/p0;

    const/16 v9, 0x17

    invoke-direct {v8, v9, v4, v7}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v4, Lcom/google/firebase/messaging/n;->b:Ljava/util/concurrent/Future;

    iget-object v0, v7, Lr3/i;->a:Lr3/o;

    iput-object v0, v4, Lcom/google/firebase/messaging/n;->c:Lr3/o;

    :cond_6
    iget-object v0, v1, Lva/f;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    iget-object v0, v1, Lva/f;->c:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ld/s0;

    sget-object v0, Lcom/google/firebase/messaging/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v9, "Couldn\'t get own application info: "

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    :try_start_1
    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_7

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_4
    move-object v10, v0

    const-string v0, "gcm.n.android_channel_id"

    invoke-virtual {v8, v0}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x3

    :try_start_2
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v13, 0x1a

    if-ge v12, v13, :cond_8

    goto/16 :goto_7

    :cond_8
    const-class v12, Landroid/app/NotificationManager;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v12, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v13

    if-eqz v13, :cond_9

    goto :goto_8

    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Notification Channel requested ("

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") has not been created by the app. Manifest configuration, or default, value will be used."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v0, "com.google.firebase.messaging.default_notification_channel_id"

    invoke-virtual {v10, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v12, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v13

    if-eqz v13, :cond_b

    goto :goto_8

    :cond_b
    const-string v0, "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used."

    goto :goto_5

    :cond_c
    const-string v0, "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used."

    :goto_5
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fcm_fallback_notification_channel"

    invoke-virtual {v12, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v13

    if-nez v13, :cond_e

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "fcm_fallback_notification_channel_label"

    const-string v5, "string"

    invoke-virtual {v13, v15, v5, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name."

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Misc"

    goto :goto_6

    :cond_d
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    new-instance v13, Landroid/app/NotificationChannel;

    invoke-direct {v13, v0, v5, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v12, v13}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_8

    :catch_2
    :goto_7
    const/4 v0, 0x0

    :cond_e
    :goto_8
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    new-instance v14, Lt/x;

    invoke-direct {v14, v7, v0}, Lt/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "gcm.n.title"

    invoke-virtual {v8, v12, v5, v0}, Ld/s0;->r(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_f

    invoke-static {v0}, Lt/x;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v14, Lt/x;->e:Ljava/lang/CharSequence;

    :cond_f
    const-string v0, "gcm.n.body"

    invoke-virtual {v8, v12, v5, v0}, Ld/s0;->r(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    invoke-static {v0}, Lt/x;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    iput-object v15, v14, Lt/x;->f:Ljava/lang/CharSequence;

    new-instance v15, Lt/v;

    invoke-direct {v15}, Lt/v;-><init>()V

    invoke-static {v0}, Lt/x;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v15, Lt/v;->b:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Lt/x;->c(Lt/y;)V

    :cond_10
    const-string v0, "gcm.n.icon"

    invoke-virtual {v8, v0}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_13

    const-string v15, "drawable"

    invoke-virtual {v12, v0, v15, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_11

    goto :goto_b

    :cond_11
    const-string v15, "mipmap"

    invoke-virtual {v12, v0, v15, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_12

    goto :goto_b

    :cond_12
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v11, "Icon resource "

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found. Notification will use default icon."

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v0, "com.google.firebase.messaging.default_notification_icon"

    invoke-virtual {v10, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_14

    goto :goto_9

    :cond_14
    :try_start_3
    invoke-virtual {v13, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move v15, v0

    goto :goto_a

    :catch_3
    move-exception v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    move v15, v11

    :goto_a
    if-eqz v15, :cond_15

    goto :goto_b

    :cond_15
    const v15, 0x1080093

    :goto_b
    iget-object v9, v14, Lt/x;->s:Landroid/app/Notification;

    iput v15, v9, Landroid/app/Notification;->icon:I

    const-string v0, "gcm.n.sound2"

    invoke-virtual {v8, v0}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_16

    const-string v0, "gcm.n.sound"

    invoke-virtual {v8, v0}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v15, 0x2

    if-eqz v11, :cond_17

    const/4 v0, 0x0

    goto :goto_c

    :cond_17
    const-string v11, "default"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    const-string v11, "raw"

    invoke-virtual {v12, v0, v11, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_18

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "android.resource://"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/raw/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_c

    :cond_18
    invoke-static {v15}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    :goto_c
    const/4 v11, -0x1

    const/4 v12, 0x4

    if-eqz v0, :cond_19

    iput-object v0, v9, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput v11, v9, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Lt/w;->b()Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {v0, v12}, Lt/w;->c(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v12, 0x5

    invoke-static {v0, v12}, Lt/w;->e(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {v0}, Lt/w;->a(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, v9, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_19
    const-string v0, "gcm.n.click_action"

    invoke-virtual {v8, v0}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1a

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_e

    :cond_1a
    const-string v0, "gcm.n.link_android"

    invoke-virtual {v8, v0}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1b

    const-string v0, "gcm.n.link"

    invoke-virtual {v8, v0}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_1d

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_e

    :cond_1d
    invoke-virtual {v13, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    if-nez v12, :cond_1e

    const-string v0, "No activity found to launch app"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_e
    const/high16 v0, 0x44000000    # 512.0f

    const-string v5, "google.c.a.e"

    if-nez v12, :cond_1f

    const/4 v2, 0x0

    goto :goto_12

    :cond_1f
    const/high16 v13, 0x4000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v13, Landroid/os/Bundle;

    iget-object v11, v8, Ld/s0;->b:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    invoke-direct {v13, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v11, v8, Ld/s0;->b:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v11}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_23

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/String;

    const-string v2, "google.c."

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "gcm.n."

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "gcm.notification."

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_10

    :cond_20
    move v2, v3

    goto :goto_11

    :cond_21
    :goto_10
    const/4 v2, 0x1

    :goto_11
    if-eqz v2, :cond_22

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_22
    const/4 v2, 0x1

    const/4 v15, 0x2

    goto :goto_f

    :cond_23
    invoke-virtual {v12, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v8, v5}, Ld/s0;->n(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v8}, Ld/s0;->w()Landroid/os/Bundle;

    move-result-object v2

    const-string v11, "gcm.n.analytics_data"

    invoke-virtual {v12, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_24
    sget-object v2, Lcom/google/firebase/messaging/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v7, v2, v12, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_12
    iput-object v2, v14, Lt/x;->g:Landroid/app/PendingIntent;

    invoke-virtual {v8, v5}, Ld/s0;->n(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v0, 0x0

    goto :goto_13

    :cond_25
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ld/s0;->w()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    sget-object v5, Lcom/google/firebase/messaging/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "wrapped_intent"

    invoke-virtual {v11, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v7, v5, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_26

    iput-object v0, v9, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_26
    const-string v0, "gcm.n.color"

    invoke-virtual {v8, v0}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    :try_start_4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_14

    :catch_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Color is invalid: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Notification will use default color."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const-string v0, "com.google.firebase.messaging.default_notification_color"

    invoke-virtual {v10, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_28

    :try_start_5
    sget-object v2, Lt/h;->a:Ljava/lang/Object;

    invoke-static {v7, v0}, Lu/d;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_14

    :catch_5
    const-string v0, "Cannot find the color resource referenced in AndroidManifest."

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v14, Lt/x;->o:I

    :cond_29
    const-string v0, "gcm.n.sticky"

    invoke-virtual {v8, v0}, Ld/s0;->n(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v2, v14, Lt/x;->s:Landroid/app/Notification;

    if-eqz v0, :cond_2a

    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_15

    :cond_2a
    iget v0, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, -0x11

    :goto_15
    iput v0, v2, Landroid/app/Notification;->flags:I

    const-string v0, "gcm.n.local_only"

    invoke-virtual {v8, v0}, Ld/s0;->n(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v14, Lt/x;->m:Z

    const-string v0, "gcm.n.ticker"

    invoke-virtual {v8, v0}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v2, v14, Lt/x;->s:Landroid/app/Notification;

    invoke-static {v0}, Lt/x;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_2b
    const-string v0, "gcm.n.notification_priority"

    invoke-virtual {v8, v0}, Ld/s0;->o(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, -0x2

    if-nez v0, :cond_2c

    goto :goto_16

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v2, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_2e

    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "notificationPriority is invalid "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting notificationPriority."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    const/4 v0, 0x0

    :cond_2e
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v14, Lt/x;->j:I

    :cond_2f
    const-string v0, "gcm.n.visibility"

    invoke-virtual {v8, v0}, Ld/s0;->o(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "NotificationParams"

    if-nez v0, :cond_30

    goto :goto_17

    :cond_30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, -0x1

    if-lt v7, v10, :cond_31

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x1

    if-le v7, v10, :cond_32

    :cond_31
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "visibility is invalid: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting visibility."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    const/4 v0, 0x0

    :cond_32
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v14, Lt/x;->p:I

    :cond_33
    const-string v0, "gcm.n.notification_count"

    invoke-virtual {v8, v0}, Ld/s0;->o(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_34

    goto :goto_18

    :cond_34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_35

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "notificationCount is invalid: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting notificationCount."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 v0, 0x0

    :cond_35
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v14, Lt/x;->i:I

    :cond_36
    const-string v0, "gcm.n.event_time"

    invoke-virtual {v8, v0}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_37

    :try_start_6
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_19

    :catch_6
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Couldn\'t parse value of "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ld/s0;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") into a long"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_38

    const/4 v7, 0x1

    iput-boolean v7, v14, Lt/x;->k:Z

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/app/Notification;->when:J

    :cond_38
    const-string v0, "gcm.n.vibrate_timings"

    invoke-virtual {v8, v0}, Ld/s0;->p(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_39

    goto :goto_1b

    :cond_39
    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v10, 0x1

    if-le v7, v10, :cond_3a

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v10, v7, [J

    move v11, v3

    :goto_1a
    if-ge v11, v7, :cond_3b

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v12

    aput-wide v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    :cond_3a
    new-instance v7, Lorg/json/JSONException;

    const-string v10, "vibrateTimings have invalid length"

    invoke-direct {v7, v10}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "User defined vibrateTimings is invalid: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting vibrateTimings."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    const/4 v10, 0x0

    :cond_3b
    if-eqz v10, :cond_3c

    iput-object v10, v9, Landroid/app/Notification;->vibrate:[J

    :cond_3c
    const-string v7, ". Skipping setting LightSettings"

    const-string v10, "LightSettings is invalid: "

    const-string v0, "gcm.n.light_settings"

    invoke-virtual {v8, v0}, Ld/s0;->p(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v11, :cond_3d

    goto :goto_1d

    :cond_3d
    const/4 v12, 0x3

    new-array v0, v12, [I

    :try_start_8
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ne v13, v12, :cond_3f

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const/high16 v13, -0x1000000

    if-eq v12, v13, :cond_3e

    aput v12, v0, v3

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v13

    aput v13, v0, v12

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v13

    aput v13, v0, v12

    goto :goto_1e

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v12, "Transparent color is invalid"

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance v0, Lorg/json/JSONException;

    const-string v12, "lightSettings don\'t have all three fields"

    invoke-direct {v0, v12}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ". "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :catch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_41

    aget v5, v0, v3

    const/4 v7, 0x1

    aget v10, v0, v7

    const/4 v7, 0x2

    aget v0, v0, v7

    iput v5, v9, Landroid/app/Notification;->ledARGB:I

    iput v10, v9, Landroid/app/Notification;->ledOnMS:I

    iput v0, v9, Landroid/app/Notification;->ledOffMS:I

    if-eqz v10, :cond_40

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_1f

    :cond_40
    move v0, v3

    :goto_1f
    iget v5, v9, Landroid/app/Notification;->flags:I

    and-int/2addr v2, v5

    or-int/2addr v0, v2

    iput v0, v9, Landroid/app/Notification;->flags:I

    :cond_41
    const-string v0, "gcm.n.default_sound"

    invoke-virtual {v8, v0}, Ld/s0;->n(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "gcm.n.default_vibrate_timings"

    invoke-virtual {v8, v2}, Ld/s0;->n(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    or-int/lit8 v0, v0, 0x2

    :cond_42
    const-string v2, "gcm.n.default_light_settings"

    invoke-virtual {v8, v2}, Ld/s0;->n(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    or-int/lit8 v0, v0, 0x4

    :cond_43
    iput v0, v9, Landroid/app/Notification;->defaults:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_44

    iget v0, v9, Landroid/app/Notification;->flags:I

    const/4 v2, 0x1

    or-int/2addr v0, v2

    iput v0, v9, Landroid/app/Notification;->flags:I

    :cond_44
    const-string v0, "gcm.n.tag"

    invoke-virtual {v8, v0}, Ld/s0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_20

    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FCM-Notification:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_20
    move-object v2, v0

    if-nez v4, :cond_46

    :goto_21
    const/4 v4, 0x3

    goto :goto_24

    :cond_46
    :try_start_9
    iget-object v0, v4, Lcom/google/firebase/messaging/n;->c:Lr3/o;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x5

    invoke-static {v0, v7, v8, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->c(Lr3/o;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_47

    const/4 v5, 0x0

    goto :goto_22

    :cond_47
    new-instance v5, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object v0, v5, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    :goto_22
    iput-object v5, v14, Lt/x;->h:Landroidx/core/graphics/drawable/IconCompat;

    new-instance v5, Lt/t;

    invoke-direct {v5}, Lt/t;-><init>()V

    if-nez v0, :cond_48

    const/4 v7, 0x0

    goto :goto_23

    :cond_48
    new-instance v7, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object v0, v7, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    :goto_23
    iput-object v7, v5, Lt/t;->b:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v7, 0x0

    iput-object v7, v5, Lt/t;->c:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lt/t;->d:Z

    invoke-virtual {v14, v5}, Lt/x;->c(Lt/y;)V
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    const-string v0, "Failed to download image in time, showing notification without it"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/google/firebase/messaging/n;->close()V

    goto :goto_21

    :catch_b
    const-string v0, "Interrupted while downloading image, showing notification without it"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/google/firebase/messaging/n;->close()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_21

    :catch_c
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to download image: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :goto_24
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "Showing notification"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    iget-object v0, v1, Lva/f;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v14}, Lt/x;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    const/4 v1, 0x1

    return v1
.end method

.method public final l(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/g;

    invoke-virtual {v0, p1}, Landroidx/room/g;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public final m(Lv1/h;)Lv1/f;
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lv1/h;->m:Lv1/a;

    if-nez v4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v4, Lv1/a;->b:Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v7, "If-None-Match"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v6, v4, Lv1/a;->d:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v4, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "If-Modified-Since"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v4, v5

    :goto_1
    iget-object v5, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast v5, Li4/f;

    invoke-virtual {v5, p1, v4}, Li4/f;->s(Lv1/h;Ljava/util/Map;)Lw1/e;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v6, v4, Lw1/e;->a:I

    invoke-virtual {v4}, Lw1/e;->d()Ljava/util/List;

    move-result-object v11

    const/16 v5, 0x130

    if-ne v6, v5, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {p1, v5, v6, v11}, Lv9/a;->u(Lv1/h;JLjava/util/List;)Lv1/f;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v4}, Lw1/e;->b()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_4

    iget v7, v4, Lw1/e;->b:I

    iget-object v8, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast v8, Lw1/a;

    invoke-static {v5, v7, v8}, Lv9/a;->x(Ljava/io/InputStream;ILw1/a;)[B

    move-result-object v3

    goto :goto_2

    :cond_4
    new-array v3, v2, [B

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v7, v8, p1, v3, v6}, Lv9/a;->A(JLv1/h;[BI)V

    const/16 v5, 0xc8

    if-lt v6, v5, :cond_5

    const/16 v5, 0x12b

    if-gt v6, v5, :cond_5

    new-instance v12, Lv1/f;

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v0

    move-object v5, v12

    move-object v7, v3

    invoke-direct/range {v5 .. v11}, Lv1/f;-><init>(I[BZJLjava/util/List;)V

    return-object v12

    :cond_5
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v5

    move-object v6, v3

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v6, v3

    move-object v5, v4

    :goto_3
    instance-of v4, v5, Ljava/net/SocketTimeoutException;

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v4, :cond_6

    new-instance v3, Lp1/c;

    new-instance v4, Lcom/android/volley/TimeoutError;

    invoke-direct {v4}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string v5, "socket"

    invoke-direct {v3, v5, v4}, Lp1/c;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    goto :goto_6

    :cond_6
    instance-of v4, v5, Ljava/net/MalformedURLException;

    iget-object v7, p1, Lv1/h;->c:Ljava/lang/String;

    if-nez v4, :cond_f

    if-eqz v3, :cond_e

    iget v13, v3, Lw1/e;->a:I

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v7, v4, v12

    const-string v5, "Unexpected response code %d for %s"

    invoke-static {v5, v4}, Lv1/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_b

    invoke-virtual {v3}, Lw1/e;->d()Ljava/util/List;

    move-result-object v10

    new-instance v3, Lv1/f;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v8, v4, v0

    move-object v4, v3

    move v5, v13

    invoke-direct/range {v4 .. v10}, Lv1/f;-><init>(I[BZJLjava/util/List;)V

    const/16 v4, 0x191

    if-eq v13, v4, :cond_a

    const/16 v4, 0x193

    if-ne v13, v4, :cond_7

    goto :goto_5

    :cond_7
    const/16 p0, 0x190

    if-lt v13, p0, :cond_9

    const/16 p0, 0x1f3

    if-le v13, p0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Lcom/android/volley/ClientError;

    invoke-direct {p0, v3}, Lcom/android/volley/ClientError;-><init>(Lv1/f;)V

    throw p0

    :cond_9
    :goto_4
    new-instance p0, Lcom/android/volley/ServerError;

    invoke-direct {p0, v3}, Lcom/android/volley/ServerError;-><init>(Lv1/f;)V

    throw p0

    :cond_a
    :goto_5
    new-instance v4, Lp1/c;

    new-instance v5, Lcom/android/volley/AuthFailureError;

    invoke-direct {v5, v3}, Lcom/android/volley/AuthFailureError;-><init>(Lv1/f;)V

    const-string v3, "auth"

    invoke-direct {v4, v3, v5}, Lp1/c;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    move-object v3, v4

    goto :goto_6

    :cond_b
    new-instance v3, Lp1/c;

    new-instance v4, Lcom/android/volley/NetworkError;

    invoke-direct {v4}, Lcom/android/volley/NetworkError;-><init>()V

    const-string v5, "network"

    invoke-direct {v3, v5, v4}, Lp1/c;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    :goto_6
    iget-object v4, p1, Lv1/h;->l:Lj3/b;

    iget v5, v4, Lj3/b;->a:I

    :try_start_2
    iget-object v6, v3, Lp1/c;->c:Ljava/lang/Object;

    check-cast v6, Lcom/android/volley/VolleyError;

    iget v7, v4, Lj3/b;->b:I

    add-int/2addr v7, v12

    iput v7, v4, Lj3/b;->b:I

    int-to-float v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v8, v5

    iput v8, v4, Lj3/b;->a:I

    iget v4, v4, Lj3/b;->c:I
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_2

    if-gt v7, v4, :cond_c

    move v4, v12

    goto :goto_7

    :cond_c
    move v4, v2

    :goto_7
    if-eqz v4, :cond_d

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v3, v3, Lp1/c;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v12

    const-string v2, "%s-retry [timeout=%s]"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lv1/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    :try_start_3
    throw v6
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p0

    new-array v0, v11, [Ljava/lang/Object;

    iget-object v1, v3, Lp1/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "%s-timeout-giveup [timeout=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lv1/h;->a(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Lcom/android/volley/NoConnectionError;

    invoke-direct {p0, v5}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Bad URL "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final run()V
    .locals 14

    iget-object v0, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast v0, Lt9/b;

    invoke-static {v0}, Lt9/b;->a(Lt9/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast v0, Lt9/b;

    iget-object v0, v0, Lt9/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/reflect/x;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungAnalyticsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, ""

    const-string v6, "appVersionForInit"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast v0, Lt9/b;

    iget-object v0, v0, Lt9/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v1, Ls9/a;

    invoke-static {v0, v1}, Lva/n;->K(Landroid/content/Context;Ls9/a;)V

    iget-object v0, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast v0, Lt9/b;

    iget-object v0, v0, Lt9/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast v1, Ls9/a;

    invoke-static {v0, v1}, Lva/n;->J(Landroid/content/Context;Ls9/a;)V

    :cond_3
    iget-object v0, p0, Lva/f;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object p0, p0, Lva/f;->a:Ljava/lang/Object;

    check-cast p0, Ls9/a;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->SEND_PREVIOUS_REGISTRATION_INFO:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    new-instance v2, Lva/e;

    invoke-direct {v2, v0, p0, v1}, Lva/e;-><init>(Landroid/app/Application;Ls9/a;Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;)V

    const-string p0, "SATerms"

    invoke-virtual {v0, p0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Send previous agreement, timestamp : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv4/b;->s(Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/impl/x;->h()Landroidx/work/impl/x;

    move-result-object v1

    new-instance v4, Lba/b;

    iget-object v5, v2, Lva/e;->b:Ljava/lang/Object;

    check-cast v5, Ls9/a;

    iget-object v9, v5, Ls9/a;->a:Ljava/lang/String;

    new-instance v13, Lba/a;

    invoke-direct {v13, v2, v10, v11, v12}, Lba/a;-><init>(Lva/e;Ljava/lang/String;J)V

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lba/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLba/a;)V

    invoke-virtual {v1, v4}, Landroidx/work/impl/x;->d(Lab/a;)V

    goto :goto_2

    :cond_4
    iget-object p0, v2, Lva/e;->d:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->SEND_PREVIOUS_REGISTRATION_INFO:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    if-eq p0, v1, :cond_7

    sget v1, Lh3/a;->r:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->getAction()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    iget-object p0, v2, Lva/e;->b:Ljava/lang/Object;

    check-cast p0, Ls9/a;

    iget-object p0, p0, Ls9/a;->a:Ljava/lang/String;

    aput-object p0, v1, v7

    const-string p0, "Send broadcast for %s, tid : %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/b;->s(Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.diagmonagent"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v2, Lva/e;->d:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v2, Lva/e;->b:Ljava/lang/Object;

    check-cast v1, Ls9/a;

    iget-object v1, v1, Ls9/a;->a:Ljava/lang/String;

    const-string v5, "tid"

    invoke-virtual {p0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "agree"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v2, Lva/e;->d:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->DELETE_SENSITIVE_APP_DATA:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    if-ne v1, v3, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "event_type"

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget p0, Lh3/a;->r:I

    if-ne p0, v4, :cond_6

    iget-object p0, v2, Lva/e;->b:Ljava/lang/Object;

    check-cast p0, Ls9/a;

    invoke-static {v0, v4, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->l(Landroid/content/Context;ILs9/a;)Lcom/google/protobuf/b8;

    move-result-object p0

    check-cast p0, Ly9/a;

    iput-boolean v7, p0, Ly9/a;->f:Z

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Send agreement, timestamp : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/b;->s(Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/impl/x;->h()Landroidx/work/impl/x;

    move-result-object p0

    new-instance v0, Lba/b;

    iget-object v1, v2, Lva/e;->b:Ljava/lang/Object;

    check-cast v1, Ls9/a;

    iget-object v9, v1, Ls9/a;->a:Ljava/lang/String;

    iget-object v1, v2, Lva/e;->c:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    new-instance v13, Lba/a;

    invoke-direct {v13, v2, v10, v11, v12}, Lba/a;-><init>(Lva/e;Ljava/lang/String;J)V

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lba/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLba/a;)V

    invoke-virtual {p0, v0}, Landroidx/work/impl/x;->d(Lab/a;)V

    :cond_7
    return-void
.end method
