.class public final Lb3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final p:Lcom/google/android/gms/common/api/Status;

.field public static final q:Lcom/google/android/gms/common/api/Status;

.field public static final t:Ljava/lang/Object;

.field public static u:Lb3/e;


# instance fields
.field public a:J

.field public b:Z

.field public c:Lc3/n;

.field public d:Le3/c;

.field public final e:Landroid/content/Context;

.field public final f:La3/e;

.field public final g:Lcom/google/android/gms/internal/measurement/h3;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public final k:Ll/c;

.field public final l:Ll/c;

.field public final m:Ll3/c;

.field public volatile n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lb3/e;->p:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lb3/e;->q:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb3/e;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    sget-object v0, La3/e;->d:La3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lb3/e;->a:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb3/e;->b:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lb3/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lb3/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x5

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v2, p0, Lb3/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x0

    new-instance v4, Ll/c;

    invoke-direct {v4, v1}, Ll/c;-><init>(I)V

    iput-object v4, p0, Lb3/e;->k:Ll/c;

    new-instance v4, Ll/c;

    invoke-direct {v4, v1}, Ll/c;-><init>(I)V

    iput-object v4, p0, Lb3/e;->l:Ll/c;

    iput-boolean v3, p0, Lb3/e;->n:Z

    iput-object p1, p0, Lb3/e;->e:Landroid/content/Context;

    new-instance v3, Ll3/c;

    invoke-direct {v3, p2, p0}, Ll3/c;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lb3/e;->m:Ll3/c;

    iput-object v0, p0, Lb3/e;->f:La3/e;

    new-instance p2, Lcom/google/android/gms/internal/measurement/h3;

    invoke-direct {p2, v2}, Lcom/google/android/gms/internal/measurement/h3;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lb3/e;->g:Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Lcom/fasterxml/jackson/annotation/i0;->d:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/fasterxml/jackson/annotation/i0;->d:Ljava/lang/Boolean;

    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/annotation/i0;->d:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lb3/e;->n:Z

    :cond_1
    const/4 p0, 0x6

    invoke-virtual {v3, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static c(Lb3/a;La3/b;)Lcom/google/android/gms/common/api/Status;
    .locals 7

    new-instance v6, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lb3/a;->b:Lva/f;

    iget-object p0, p0, Lva/f;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x3f

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "API: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/4 v1, 0x1

    iget-object v4, p1, La3/b;->c:Landroid/app/PendingIntent;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;La3/b;)V

    return-object v6
.end method

.method public static e(Landroid/content/Context;)Lb3/e;
    .locals 5

    sget-object v0, Lb3/e;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb3/e;->u:Lb3/e;

    if-nez v1, :cond_1

    sget-object v1, Lc3/j0;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lc3/j0;->i:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit v1

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GoogleApiHandler"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lc3/j0;->i:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    sget-object v2, Lc3/j0;->i:Landroid/os/HandlerThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lb3/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, La3/e;->c:Ljava/lang/Object;

    invoke-direct {v2, p0, v1}, Lb3/e;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lb3/e;->u:Lb3/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    sget-object p0, Lb3/e;->u:Lb3/e;

    monitor-exit v0

    return-object p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-boolean v0, p0, Lb3/e;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lc3/l;->f()Lc3/l;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lb3/e;->g:Lcom/google/android/gms/internal/measurement/h3;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    const v0, 0xc1fa340

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v2, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final b(La3/b;I)Z
    .locals 6

    iget-object v0, p0, Lb3/e;->f:La3/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lb3/e;->e:Landroid/content/Context;

    invoke-static {p0}, Lh3/a;->y(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p1, La3/b;->b:I

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v4, p1, La3/b;->c:Landroid/app/PendingIntent;

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    iget-object p1, p1, La3/b;->c:Landroid/app/PendingIntent;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0, v1, p0, p1}, La3/e;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p1, 0xc000000

    invoke-static {p0, v2, v4, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    sget v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "pending_intent"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "failing_client_id"

    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "notify_manager"

    invoke-virtual {v4, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0xa000000

    invoke-static {p0, v2, v4, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, La3/e;->f(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    move v2, v3

    :cond_4
    :goto_2
    return v2
.end method

.method public final d(Lcom/google/android/gms/common/api/d;)Lb3/p;
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/common/api/d;->e:Lb3/a;

    iget-object v1, p0, Lb3/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/p;

    if-nez v2, :cond_0

    new-instance v2, Lb3/p;

    invoke-direct {v2, p0, p1}, Lb3/p;-><init>(Lb3/e;Lcom/google/android/gms/common/api/d;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v2, Lb3/p;->d:Lc3/i;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/b;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lb3/e;->l:Ll/c;

    invoke-virtual {p0, v0}, Ll/c;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lb3/p;->m()V

    return-object v2
.end method

.method public final f(La3/b;I)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lb3/e;->b(La3/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lb3/e;->m:Ll3/c;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "GoogleApiManager"

    iget-object v2, p0, Lb3/e;->m:Ll3/c;

    iget-object v3, p0, Lb3/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/32 v4, 0x493e0

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x1f

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown message id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :pswitch_0
    iput-boolean v8, p0, Lb3/e;->b:Z

    goto/16 :goto_b

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb3/w;

    iget-wide v0, p1, Lb3/w;->c:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    iget-object v1, p1, Lb3/w;->a:Lc3/k;

    iget v3, p1, Lb3/w;->b:I

    if-nez v0, :cond_1

    new-instance p1, Lc3/n;

    new-array v0, v9, [Lc3/k;

    aput-object v1, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Lc3/n;-><init>(Ljava/util/List;I)V

    iget-object v0, p0, Lb3/e;->d:Le3/c;

    if-nez v0, :cond_0

    sget-object v0, Lc3/o;->b:Lc3/o;

    new-instance v0, Le3/c;

    iget-object v1, p0, Lb3/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Le3/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb3/e;->d:Le3/c;

    :cond_0
    iget-object p0, p0, Lb3/e;->d:Le3/c;

    invoke-virtual {p0, p1}, Le3/c;->b(Lc3/n;)Lr3/o;

    goto/16 :goto_b

    :cond_1
    iget-object v0, p0, Lb3/e;->c:Lc3/n;

    if-eqz v0, :cond_8

    iget-object v4, v0, Lc3/n;->b:Ljava/util/List;

    iget v0, v0, Lc3/n;->a:I

    if-ne v0, v3, :cond_4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p1, Lb3/w;->d:I

    if-lt v0, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb3/e;->c:Lc3/n;

    iget-object v4, v0, Lc3/n;->b:Ljava/util/List;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lc3/n;->b:Ljava/util/List;

    :cond_3
    iget-object v0, v0, Lc3/n;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lb3/e;->c:Lc3/n;

    if-eqz v0, :cond_8

    iget v4, v0, Lc3/n;->a:I

    if-gtz v4, :cond_5

    invoke-virtual {p0}, Lb3/e;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    iget-object v4, p0, Lb3/e;->d:Le3/c;

    if-nez v4, :cond_6

    sget-object v4, Lc3/o;->b:Lc3/o;

    new-instance v4, Le3/c;

    iget-object v5, p0, Lb3/e;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Le3/c;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lb3/e;->d:Le3/c;

    :cond_6
    iget-object v4, p0, Lb3/e;->d:Le3/c;

    invoke-virtual {v4, v0}, Le3/c;->b(Lc3/n;)Lr3/o;

    :cond_7
    iput-object v7, p0, Lb3/e;->c:Lc3/n;

    :cond_8
    :goto_1
    iget-object v0, p0, Lb3/e;->c:Lc3/n;

    if-nez v0, :cond_22

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/n;

    invoke-direct {v1, v0, v3}, Lc3/n;-><init>(Ljava/util/List;I)V

    iput-object v1, p0, Lb3/e;->c:Lc3/n;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    iget-wide v0, p1, Lb3/w;->c:J

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    :pswitch_2
    iget-object p1, p0, Lb3/e;->c:Lc3/n;

    if-eqz p1, :cond_22

    iget v0, p1, Lc3/n;->a:I

    if-gtz v0, :cond_9

    invoke-virtual {p0}, Lb3/e;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    iget-object v0, p0, Lb3/e;->d:Le3/c;

    if-nez v0, :cond_a

    sget-object v0, Lc3/o;->b:Lc3/o;

    new-instance v0, Le3/c;

    iget-object v1, p0, Lb3/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Le3/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb3/e;->d:Le3/c;

    :cond_a
    iget-object v0, p0, Lb3/e;->d:Le3/c;

    invoke-virtual {v0, p1}, Le3/c;->b(Lc3/n;)Lr3/o;

    :cond_b
    iput-object v7, p0, Lb3/e;->c:Lc3/n;

    goto/16 :goto_b

    :pswitch_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lb3/q;

    iget-object p1, p0, Lb3/q;->a:Lb3/a;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lb3/q;->a:Lb3/a;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb3/p;

    iget-object v0, p1, Lb3/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p1, Lb3/p;->n:Lb3/e;

    iget-object v1, v0, Lb3/e;->m:Ll3/c;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lb3/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, p0, Lb3/q;->b:La3/d;

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/u;

    instance-of v5, v3, Lb3/u;

    if-eqz v5, :cond_c

    invoke-virtual {v3, p1}, Lb3/u;->b(Lb3/p;)[La3/d;

    move-result-object v5

    if-eqz v5, :cond_c

    array-length v6, v5

    move v7, v8

    :goto_3
    if-ge v7, v6, :cond_e

    aget-object v10, v5, v7

    invoke-static {v10, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    if-ltz v7, :cond_e

    move v4, v9

    goto :goto_4

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_e
    move v4, v8

    :goto_4
    if-eqz v4, :cond_c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_5
    if-ge v8, p0, :cond_22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb3/u;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {v2, v4}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(La3/d;)V

    invoke-virtual {p1, v2}, Lb3/u;->d(Ljava/lang/RuntimeException;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :pswitch_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lb3/q;

    iget-object p1, p0, Lb3/q;->a:Lb3/a;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lb3/q;->a:Lb3/a;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb3/p;

    iget-object v0, p1, Lb3/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_b

    :cond_10
    iget-boolean p0, p1, Lb3/p;->k:Z

    if-nez p0, :cond_22

    iget-object p0, p1, Lb3/p;->d:Lc3/i;

    invoke-virtual {p0}, Lc3/e;->s()Z

    move-result p0

    if-nez p0, :cond_11

    invoke-virtual {p1}, Lb3/p;->m()V

    goto/16 :goto_b

    :cond_11
    invoke-virtual {p1}, Lb3/p;->g()V

    goto/16 :goto_b

    :pswitch_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v7

    :pswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/p;

    iget-object p1, p0, Lb3/p;->n:Lb3/e;

    iget-object p1, p1, Lb3/e;->m:Ll3/c;

    invoke-static {p1}, Lva/n;->d(Ll3/c;)V

    iget-object p1, p0, Lb3/p;->d:Lc3/i;

    invoke-virtual {p1}, Lc3/e;->s()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lb3/p;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lb3/p;->f:Lcom/google/android/gms/internal/measurement/h3;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    move v8, v9

    :cond_13
    if-eqz v8, :cond_14

    invoke-virtual {p0}, Lb3/p;->j()V

    goto/16 :goto_b

    :cond_14
    const-string p0, "Timing out service connection."

    invoke-virtual {p1, p0}, Lc3/e;->c(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_7
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/p;

    iget-object p1, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, p1, Lb3/e;->m:Ll3/c;

    invoke-static {v0}, Lva/n;->d(Ll3/c;)V

    iget-boolean v0, p0, Lb3/p;->k:Z

    if-eqz v0, :cond_22

    if-eqz v0, :cond_15

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v1, v0, Lb3/e;->m:Ll3/c;

    iget-object v2, p0, Lb3/p;->e:Lb3/a;

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v8, p0, Lb3/p;->k:Z

    :cond_15
    iget-object v0, p1, Lb3/e;->f:La3/e;

    iget-object p1, p1, Lb3/e;->e:Landroid/content/Context;

    sget v1, La3/f;->a:I

    invoke-virtual {v0, p1, v1}, La3/e;->b(Landroid/content/Context;I)I

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_16

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x15

    const-string v1, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_6

    :cond_16
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x16

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_6
    invoke-virtual {p0, p1}, Lb3/p;->e(Lcom/google/android/gms/common/api/Status;)V

    iget-object p0, p0, Lb3/p;->d:Lc3/i;

    const-string p1, "Timing out connection while resuming."

    invoke-virtual {p0, p1}, Lc3/e;->c(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_8
    iget-object p0, p0, Lb3/e;->l:Ll/c;

    invoke-virtual {p0}, Ll/c;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/a;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/p;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lb3/p;->p()V

    goto :goto_7

    :cond_18
    invoke-virtual {p0}, Ll/c;->clear()V

    goto/16 :goto_b

    :pswitch_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/p;

    iget-object p1, p0, Lb3/p;->n:Lb3/e;

    iget-object p1, p1, Lb3/e;->m:Ll3/c;

    invoke-static {p1}, Lva/n;->d(Ll3/c;)V

    iget-boolean p1, p0, Lb3/p;->k:Z

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lb3/p;->m()V

    goto/16 :goto_b

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/d;

    invoke-virtual {p0, p1}, Lb3/e;->d(Lcom/google/android/gms/common/api/d;)Lb3/p;

    goto/16 :goto_b

    :pswitch_b
    iget-object p1, p0, Lb3/e;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    sget-object v0, Lb3/c;->e:Lb3/c;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lb3/c;->d:Z

    if-nez v1, :cond_19

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iput-boolean v9, v0, Lb3/c;->d:Z

    :cond_19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance p1, Lb3/n;

    invoke-direct {p1, p0}, Lb3/n;-><init>(Lb3/e;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_1
    iget-object v1, v0, Lb3/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, v0, Lb3/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {p1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1a

    iget p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le p1, v1, :cond_1a

    iget-object p1, v0, Lb3/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1a
    iget-object p1, v0, Lb3/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_22

    iput-wide v4, p0, Lb3/e;->a:J

    goto/16 :goto_b

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, La3/b;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/p;

    iget v4, v3, Lb3/p;->i:I

    if-ne v4, v0, :cond_1b

    move-object v7, v3

    :cond_1c
    if-eqz v7, :cond_1e

    iget v0, p1, La3/b;->b:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1d

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lb3/e;->f:La3/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, La3/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, La3/b;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, La3/b;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x45

    add-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v6, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v1}, Lb3/p;->e(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_b

    :cond_1d
    iget-object p0, v7, Lb3/p;->e:Lb3/a;

    invoke-static {p0, p1}, Lb3/e;->c(Lb3/a;La3/b;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    invoke-virtual {v7, p0}, Lb3/p;->e(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_b

    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x4c

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Could not find API instance "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb3/x;

    iget-object v0, p1, Lb3/x;->c:Lcom/google/android/gms/common/api/d;

    iget-object v0, v0, Lcom/google/android/gms/common/api/d;->e:Lb3/a;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/p;

    if-nez v0, :cond_1f

    iget-object v0, p1, Lb3/x;->c:Lcom/google/android/gms/common/api/d;

    invoke-virtual {p0, v0}, Lb3/e;->d(Lcom/google/android/gms/common/api/d;)Lb3/p;

    move-result-object v0

    :cond_1f
    iget-object v1, v0, Lb3/p;->d:Lc3/i;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/b;->f()Z

    move-result v1

    iget-object v2, p1, Lb3/x;->a:Lb3/u;

    if-eqz v1, :cond_20

    iget-object p0, p0, Lb3/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    iget p1, p1, Lb3/x;->b:I

    if-eq p0, p1, :cond_20

    sget-object p0, Lb3/e;->p:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, p0}, Lb3/u;->c(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lb3/p;->p()V

    goto :goto_b

    :cond_20
    invoke-virtual {v0, v2}, Lb3/p;->n(Lb3/u;)V

    goto :goto_b

    :pswitch_e
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb3/p;

    iget-object v0, p1, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v0}, Lva/n;->d(Ll3/c;)V

    iput-object v7, p1, Lb3/p;->m:La3/b;

    invoke-virtual {p1}, Lb3/p;->m()V

    goto :goto_8

    :pswitch_f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v7

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v9, p1, :cond_21

    goto :goto_9

    :cond_21
    const-wide/16 v4, 0x2710

    :goto_9
    iput-wide v4, p0, Lb3/e;->a:J

    const/16 p1, 0xc

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/a;

    invoke-virtual {v2, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lb3/e;->a:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    :cond_22
    :goto_b
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
