.class public abstract Lc3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final x:[La3/d;


# instance fields
.field public volatile a:Ljava/lang/String;

.field public b:Lb3/j;

.field public final c:Landroid/content/Context;

.field public final d:Lc3/j0;

.field public final e:La3/f;

.field public final f:Lc3/b0;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public i:Lc3/w;

.field public j:Lc3/d;

.field public k:Landroid/os/IInterface;

.field public final l:Ljava/util/ArrayList;

.field public m:Lc3/d0;

.field public n:I

.field public final o:Lc3/b;

.field public final p:Lc3/c;

.field public final q:I

.field public final r:Ljava/lang/String;

.field public volatile s:Ljava/lang/String;

.field public t:La3/b;

.field public u:Z

.field public volatile v:Lc3/g0;

.field public final w:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [La3/d;

    sput-object v0, Lc3/e;->x:[La3/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc3/j0;La3/f;ILc3/b;Lc3/c;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc3/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lc3/e;->g:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lc3/e;->h:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc3/e;->l:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Lc3/e;->n:I

    iput-object v0, p0, Lc3/e;->t:La3/b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc3/e;->u:Z

    iput-object v0, p0, Lc3/e;->v:Lc3/g0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc3/e;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lc3/e;->c:Landroid/content/Context;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p3, p0, Lc3/e;->d:Lc3/j0;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lva/n;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lc3/e;->e:La3/f;

    new-instance p1, Lc3/b0;

    invoke-direct {p1, p0, p2}, Lc3/b0;-><init>(Lc3/e;Landroid/os/Looper;)V

    iput-object p1, p0, Lc3/e;->f:Lc3/b0;

    iput p5, p0, Lc3/e;->q:I

    iput-object p6, p0, Lc3/e;->o:Lc3/b;

    iput-object p7, p0, Lc3/e;->p:Lc3/c;

    iput-object p8, p0, Lc3/e;->r:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Supervisor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Looper must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Context must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic u(Lc3/e;IILandroid/os/IInterface;)Z
    .locals 2

    iget-object v0, p0, Lc3/e;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lc3/e;->n:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lc3/e;->v(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p0, 0x1

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc3/e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lc3/e;->disconnect()V

    return-void
.end method

.method public abstract d()I
.end method

.method public final disconnect()V
    .locals 5

    iget-object v0, p0, Lc3/e;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lc3/e;->l:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc3/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lc3/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc3/v;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v3, v4, Lc3/v;->a:Ljava/lang/Object;

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lc3/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lc3/e;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object v3, p0, Lc3/e;->i:Lc3/w;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lc3/e;->v(ILandroid/os/IInterface;)V

    return-void

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public final e(Lc3/j;Ljava/util/Set;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lc3/e;->m()Landroid/os/Bundle;

    move-result-object v2

    new-instance v15, Lc3/h;

    iget v5, v1, Lc3/e;->q:I

    iget-object v14, v1, Lc3/e;->s:Ljava/lang/String;

    sget v6, La3/f;->a:I

    sget-object v9, Lc3/h;->p:[Lcom/google/android/gms/common/api/Scope;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    sget-object v13, Lc3/h;->q:[La3/d;

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v15

    move-object v12, v13

    move-object/from16 v19, v14

    move/from16 v14, v16

    move-object/from16 v20, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v3 .. v17}, Lc3/h;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[La3/d;[La3/d;ZIZLjava/lang/String;)V

    iget-object v3, v1, Lc3/e;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v20

    iput-object v3, v4, Lc3/h;->d:Ljava/lang/String;

    iput-object v2, v4, Lc3/h;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v4, Lc3/h;->f:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lc3/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lc3/e;->j()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/accounts/Account;

    const-string v2, "<<default account>>"

    const-string v3, "com.google"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v0, v4, Lc3/h;->h:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Ll3/a;

    iget-object v0, v0, Ll3/a;->d:Landroid/os/IBinder;

    iput-object v0, v4, Lc3/h;->e:Landroid/os/IBinder;

    :cond_2
    sget-object v0, Lc3/e;->x:[La3/d;

    iput-object v0, v4, Lc3/h;->i:[La3/d;

    invoke-virtual/range {p0 .. p0}, Lc3/e;->k()[La3/d;

    move-result-object v0

    iput-object v0, v4, Lc3/h;->j:[La3/d;

    :try_start_0
    iget-object v2, v1, Lc3/e;->h:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lc3/e;->i:Lc3/w;

    if-eqz v0, :cond_3

    new-instance v3, Lc3/c0;

    iget-object v5, v1, Lc3/e;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v3, v1, v5}, Lc3/c0;-><init>(Lc3/e;I)V

    invoke-virtual {v0, v3, v4}, Lc3/w;->a(Lc3/c0;Lc3/h;)V

    goto :goto_0

    :cond_3
    const-string v0, "GmsClient"

    const-string v3, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lc3/e;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v2, Lc3/e0;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4, v4}, Lc3/e0;-><init>(Lc3/e;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object v1, v1, Lc3/e;->f:Lc3/b0;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lc3/e;->f:Lc3/b0;

    iget-object v1, v1, Lc3/e;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h()V
    .locals 4

    invoke-virtual {p0}, Lc3/e;->d()I

    move-result v0

    iget-object v1, p0, Lc3/e;->e:La3/f;

    iget-object v2, p0, Lc3/e;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, La3/f;->b(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Lc3/e;->v(ILandroid/os/IInterface;)V

    new-instance v3, Lp5/c;

    invoke-direct {v3, p0, v2}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    iput-object v3, p0, Lc3/e;->j:Lc3/d;

    iget-object v2, p0, Lc3/e;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x3

    iget-object p0, p0, Lc3/e;->f:Lc3/b0;

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    new-instance v0, Lp5/c;

    invoke-direct {v0, p0, v2}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lc3/e;->j:Lc3/d;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lc3/e;->v(ILandroid/os/IInterface;)V

    return-void
.end method

.method public abstract i(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public j()Landroid/accounts/Account;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public k()[La3/d;
    .locals 0

    sget-object p0, Lc3/e;->x:[La3/d;

    return-object p0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()Landroid/os/Bundle;
    .locals 0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public n()Ljava/util/Set;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final o()Landroid/os/IInterface;
    .locals 3

    iget-object v0, p0, Lc3/e;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lc3/e;->n:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lc3/e;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lc3/e;->k:Landroid/os/IInterface;

    const-string v1, "Client is connected but service is null"

    invoke-static {p0, v1}, Lva/n;->j(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public r()Z
    .locals 1

    invoke-virtual {p0}, Lc3/e;->d()I

    move-result p0

    const v0, 0xc9e4920

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s()Z
    .locals 2

    iget-object v0, p0, Lc3/e;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lc3/e;->n:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final t()Z
    .locals 3

    iget-object v0, p0, Lc3/e;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lc3/e;->n:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final v(ILandroid/os/IInterface;)V
    .locals 12

    const-string v0, "unable to connect to service: "

    const-string v1, "Calling connect() while still connected, missing disconnect() for "

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-nez p2, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-ne v5, v6, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Lva/n;->c(Z)V

    iget-object v2, p0, Lc3/e;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput p1, p0, Lc3/e;->n:I

    iput-object p2, p0, Lc3/e;->k:Landroid/os/IInterface;

    const/4 v5, 0x0

    if-eq p1, v3, :cond_a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    if-eq p1, v4, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {p2}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_4

    :cond_4
    iget-object v10, p0, Lc3/e;->m:Lc3/d0;

    if-eqz v10, :cond_6

    iget-object p1, p0, Lc3/e;->b:Lb3/j;

    if-eqz p1, :cond_6

    const-string p2, "GmsClient"

    iget-object v3, p1, Lb3/j;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p1, p1, Lb3/j;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lc3/e;->d:Lc3/j0;

    iget-object p1, p0, Lc3/e;->b:Lb3/j;

    iget-object p1, p1, Lb3/j;->e:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lc3/e;->b:Lb3/j;

    iget-object p2, p1, Lb3/j;->b:Ljava/lang/Object;

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    iget v9, p1, Lb3/j;->d:I

    iget-object p1, p0, Lc3/e;->r:Ljava/lang/String;

    if-nez p1, :cond_5

    iget-object p1, p0, Lc3/e;->c:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_5
    :goto_2
    iget-object p1, p0, Lc3/e;->b:Lb3/j;

    iget-boolean v11, p1, Lb3/j;->c:Z

    invoke-virtual/range {v6 .. v11}, Lc3/j0;->b(Ljava/lang/String;Ljava/lang/String;ILc3/d0;Z)V

    iget-object p1, p0, Lc3/e;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_6
    new-instance p1, Lc3/d0;

    iget-object p2, p0, Lc3/e;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lc3/d0;-><init>(Lc3/e;I)V

    iput-object p1, p0, Lc3/e;->m:Lc3/d0;

    new-instance p2, Lb3/j;

    invoke-virtual {p0}, Lc3/e;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lc3/j0;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lc3/e;->r()Z

    move-result v3

    invoke-direct {p2, v1, v3}, Lb3/j;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lc3/e;->b:Lb3/j;

    iget-boolean p2, p2, Lb3/j;->c:Z

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lc3/e;->d()I

    move-result p2

    const v1, 0x1110e58

    if-lt p2, v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object p0, p0, Lc3/e;->b:Lb3/j;

    iget-object p0, p0, Lb3/j;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    iget-object p2, p0, Lc3/e;->d:Lc3/j0;

    iget-object v1, p0, Lc3/e;->b:Lb3/j;

    iget-object v1, v1, Lb3/j;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v3, p0, Lc3/e;->b:Lb3/j;

    iget-object v4, v3, Lb3/j;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v3, v3, Lb3/j;->d:I

    iget-object v6, p0, Lc3/e;->r:Ljava/lang/String;

    if-nez v6, :cond_9

    iget-object v6, p0, Lc3/e;->c:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    :cond_9
    iget-object v7, p0, Lc3/e;->b:Lb3/j;

    iget-boolean v7, v7, Lb3/j;->c:Z

    invoke-virtual {p0}, Lc3/e;->l()V

    new-instance v8, Lc3/h0;

    invoke-direct {v8, v1, v4, v3, v7}, Lc3/h0;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p2, v8, p1, v6, v5}, Lc3/j0;->c(Lc3/h0;Lc3/d0;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lc3/e;->b:Lb3/j;

    iget-object p2, p1, Lb3/j;->e:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p1, p1, Lb3/j;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GmsClient"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lc3/e;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    new-instance p2, Lc3/f0;

    const/16 v0, 0x10

    invoke-direct {p2, p0, v0}, Lc3/f0;-><init>(Lc3/e;I)V

    iget-object p0, p0, Lc3/e;->f:Lc3/b0;

    const/4 v0, 0x7

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_a
    iget-object v10, p0, Lc3/e;->m:Lc3/d0;

    if-eqz v10, :cond_c

    iget-object v6, p0, Lc3/e;->d:Lc3/j0;

    iget-object p1, p0, Lc3/e;->b:Lb3/j;

    iget-object p1, p1, Lb3/j;->e:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lc3/e;->b:Lb3/j;

    iget-object p2, p1, Lb3/j;->b:Ljava/lang/Object;

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    iget v9, p1, Lb3/j;->d:I

    iget-object p1, p0, Lc3/e;->r:Ljava/lang/String;

    if-nez p1, :cond_b

    iget-object p1, p0, Lc3/e;->c:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    iget-object p1, p0, Lc3/e;->b:Lb3/j;

    iget-boolean v11, p1, Lb3/j;->c:Z

    invoke-virtual/range {v6 .. v11}, Lc3/j0;->b(Ljava/lang/String;Ljava/lang/String;ILc3/d0;Z)V

    iput-object v5, p0, Lc3/e;->m:Lc3/d0;

    :cond_c
    :goto_4
    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
