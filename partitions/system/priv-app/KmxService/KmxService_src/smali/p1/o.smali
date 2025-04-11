.class public final Lp1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lp1/o;->a:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lp1/o;->b:Ljava/lang/Object;

    new-instance p1, Ll/d;

    invoke-direct {p1}, Ll/d;-><init>()V

    iput-object p1, p0, Lp1/o;->c:Ljava/lang/Object;

    new-instance p1, Ll/b;

    invoke-direct {p1}, Ll/b;-><init>()V

    iput-object p1, p0, Lp1/o;->d:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lp1/c;

    invoke-direct {p1}, Lp1/c;-><init>()V

    iput-object p1, p0, Lp1/o;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/messaging/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/messaging/r;-><init>(Lcom/google/firebase/messaging/r;Lp1/c;)V

    iput-object v0, p0, Lp1/o;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/r;->f()Lcom/google/firebase/messaging/r;

    move-result-object p1

    iput-object p1, p0, Lp1/o;->b:Ljava/lang/Object;

    new-instance p1, Ld/s0;

    const/16 v1, 0x12

    invoke-direct {p1, v1}, Ld/s0;-><init>(I)V

    iput-object p1, p0, Lp1/o;->d:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/measurement/m8;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/measurement/m8;-><init>(Ld/s0;)V

    const-string p1, "require"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/messaging/r;->k(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    iget-object p0, p0, Lp1/o;->d:Ljava/lang/Object;

    check-cast p0, Ld/s0;

    sget-object p1, Lcom/google/android/gms/internal/measurement/z0;->a:Lcom/google/android/gms/internal/measurement/z0;

    .line 3
    iget-object p0, p0, Ld/s0;->b:Ljava/lang/Object;

    .line 4
    check-cast p0, Ljava/util/Map;

    const-string v1, "internal.platform"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p0, Lcom/google/android/gms/internal/measurement/g;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    const-string p1, "runtime.counter"

    invoke-virtual {v0, p1, p0}, Lcom/google/firebase/messaging/r;->k(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Lp1/o;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lp1/o;->c:Ljava/lang/Object;

    new-instance p1, Ll/j;

    invoke-direct {p1}, Ll/j;-><init>()V

    iput-object p1, p0, Lp1/o;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/o;->a:Ljava/lang/Object;

    new-instance v0, Lp1/b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lp1/b;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lp1/o;->b:Ljava/lang/Object;

    new-instance v0, Lp1/n;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lp1/n;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lp1/o;->c:Ljava/lang/Object;

    new-instance v0, Lp1/n;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lp1/n;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lp1/o;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/concurrent/UiExecutor;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp1/o;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp1/o;->c:Ljava/lang/Object;

    sget-object v0, La5/g;->o:Lcom/google/firebase/concurrent/h;

    iput-object v0, p0, Lp1/o;->d:Ljava/lang/Object;

    iput-object p1, p0, Lp1/o;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk7/a;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lh7/a;->f:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    iput-object v0, p0, Lp1/o;->b:Ljava/lang/Object;

    sget-object v0, Lf6/h;->c:Lf6/h;

    iput-object v0, p0, Lp1/o;->d:Ljava/lang/Object;

    iput-object p1, p0, Lp1/o;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lg/c;Lh/n;)Z
    .locals 1

    iget-object v0, p0, Lp1/o;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lp1/o;->g(Lg/c;)Lg/h;

    move-result-object p1

    invoke-virtual {p0, p2}, Lp1/o;->h(Lh/n;)Landroid/view/Menu;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final b(Lg/c;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lp1/o;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lp1/o;->g(Lg/c;)Lg/h;

    move-result-object p1

    new-instance v1, Lh/v;

    iget-object p0, p0, Lp1/o;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    check-cast p2, Ly/b;

    invoke-direct {v1, p0, p2}, Lh/v;-><init>(Landroid/content/Context;Ly/b;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final c(Lg/c;)V
    .locals 1

    iget-object v0, p0, Lp1/o;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lp1/o;->g(Lg/c;)Lg/h;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final d(Lg/c;Lh/n;)Z
    .locals 1

    iget-object v0, p0, Lp1/o;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lp1/o;->g(Lg/c;)Lg/h;

    move-result-object p1

    invoke-virtual {p0, p2}, Lp1/o;->h(Lh/n;)Landroid/view/Menu;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lp1/o;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lp1/o;->c:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroidx/room/f0;

    invoke-virtual {v1}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-interface {v1, v2}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, p1}, La1/g;->r(ILjava/lang/String;)V

    :goto_0
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

    check-cast p0, Landroidx/room/f0;

    invoke-virtual {p0, v1}, Landroidx/room/f0;->release(La1/i;)V

    return-void

    :catchall_0
    move-exception p1

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    check-cast p0, Landroidx/room/f0;

    invoke-virtual {p0, v1}, Landroidx/room/f0;->release(La1/i;)V

    throw p1
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lp1/o;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, p0, Lp1/o;->d:Ljava/lang/Object;

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

    iget-object p0, p0, Lp1/o;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/room/f0;

    invoke-virtual {p0, v1}, Landroidx/room/f0;->release(La1/i;)V

    return-void

    :catchall_0
    move-exception v2

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lp1/o;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/room/f0;

    invoke-virtual {p0, v1}, Landroidx/room/f0;->release(La1/i;)V

    throw v2
.end method

.method public final g(Lg/c;)Lg/h;
    .locals 5

    iget-object v0, p0, Lp1/o;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/h;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lg/h;->b:Lg/c;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lg/h;

    iget-object p0, p0, Lp1/o;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v1, p0, p1}, Lg/h;-><init>(Landroid/content/Context;Lg/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final h(Lh/n;)Landroid/view/Menu;
    .locals 2

    iget-object v0, p0, Lp1/o;->d:Ljava/lang/Object;

    check-cast v0, Ll/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    new-instance v0, Lh/e0;

    iget-object v1, p0, Lp1/o;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lh/e0;-><init>(Landroid/content/Context;Ly/a;)V

    iget-object p0, p0, Lp1/o;->d:Ljava/lang/Object;

    check-cast p0, Ll/j;

    invoke-virtual {p0, p1, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final i(Lp1/m;)V
    .locals 2

    iget-object v0, p0, Lp1/o;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object p0, p0, Lp1/o;->b:Ljava/lang/Object;

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

.method public final varargs j(Lcom/google/firebase/messaging/r;[Lcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/n;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d3;->d(Lcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    iget-object v3, p0, Lp1/o;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/messaging/r;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/d3;->q(Lcom/google/firebase/messaging/r;)V

    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/o;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/m;

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lp1/o;->a:Ljava/lang/Object;

    check-cast v3, Lp1/c;

    invoke-virtual {v3, p1, v0}, Lp1/c;->m(Lcom/google/firebase/messaging/r;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
