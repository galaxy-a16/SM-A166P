.class public final Lb3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/e;
.implements Lcom/google/android/gms/common/api/f;


# instance fields
.field public final c:Ljava/util/LinkedList;

.field public final d:Lc3/i;

.field public final e:Lb3/a;

.field public final f:Lcom/google/android/gms/internal/measurement/h3;

.field public final g:Ljava/util/HashSet;

.field public final h:Ljava/util/HashMap;

.field public final i:I

.field public final j:Lb3/z;

.field public k:Z

.field public final l:Ljava/util/ArrayList;

.field public m:La3/b;

.field public final synthetic n:Lb3/e;


# direct methods
.method public constructor <init>(Lb3/e;Lcom/google/android/gms/common/api/d;)V
    .locals 9

    iput-object p1, p0, Lb3/p;->n:Lb3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb3/p;->c:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb3/p;->g:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb3/p;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb3/p;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lb3/p;->m:La3/b;

    iget-object v1, p1, Lb3/e;->m:Ll3/c;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/d;->a()Lo2/i;

    move-result-object v1

    invoke-virtual {v1}, Lo2/i;->b()Lc3/f;

    move-result-object v5

    iget-object v1, p2, Lcom/google/android/gms/common/api/d;->c:Lva/f;

    iget-object v1, v1, Lva/f;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    invoke-static {v2}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v3, p2, Lcom/google/android/gms/common/api/d;->a:Landroid/content/Context;

    iget-object v6, p2, Lcom/google/android/gms/common/api/d;->d:Lcom/google/android/gms/common/api/a;

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->d(Landroid/content/Context;Landroid/os/Looper;Lc3/f;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/f;)Lc3/i;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/common/api/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iput-object v2, v1, Lc3/e;->s:Ljava/lang/String;

    :cond_0
    iput-object v1, p0, Lb3/p;->d:Lc3/i;

    iget-object v2, p2, Lcom/google/android/gms/common/api/d;->e:Lb3/a;

    iput-object v2, p0, Lb3/p;->e:Lb3/a;

    new-instance v2, Lcom/google/android/gms/internal/measurement/h3;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/h3;-><init>(I)V

    iput-object v2, p0, Lb3/p;->f:Lcom/google/android/gms/internal/measurement/h3;

    iget v2, p2, Lcom/google/android/gms/common/api/d;->f:I

    iput v2, p0, Lb3/p;->i:I

    invoke-interface {v1}, Lcom/google/android/gms/common/api/b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p1, Lb3/e;->e:Landroid/content/Context;

    iget-object p1, p1, Lb3/e;->m:Ll3/c;

    new-instance v1, Lb3/z;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/d;->a()Lo2/i;

    move-result-object p2

    invoke-virtual {p2}, Lo2/i;->b()Lc3/f;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Lb3/z;-><init>(Landroid/content/Context;Ll3/c;Lc3/f;)V

    iput-object v1, p0, Lb3/p;->j:Lb3/z;

    return-void

    :cond_1
    iput-object v0, p0, Lb3/p;->j:Lb3/z;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lb3/p;->n:Lb3/e;

    iget-object v2, v1, Lb3/e;->m:Ll3/c;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lb3/p;->i(I)V

    return-void

    :cond_0
    iget-object v0, v1, Lb3/e;->m:Ll3/c;

    new-instance v1, Lo1/e;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, p0}, Lo1/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(La3/b;)V
    .locals 3

    iget-object v0, p0, Lb3/p;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    sget-object v0, La3/b;->e:La3/b;

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lb3/p;->d:Lc3/i;

    invoke-virtual {p0}, Lc3/e;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lc3/e;->b:Lb3/j;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to connect when checking package"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    throw p0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lb3/p;->n:Lb3/e;

    iget-object v2, v1, Lb3/e;->m:Ll3/c;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lb3/p;->h()V

    return-void

    :cond_0
    iget-object v0, v1, Lb3/e;->m:Ll3/c;

    new-instance v1, Lb3/y;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lb3/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(La3/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb3/p;->o(La3/b;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v0}, Lva/n;->d(Ll3/c;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lb3/p;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V
    .locals 3

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v0}, Lva/n;->d(Ll3/c;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_6

    iget-object p0, p0, Lb3/p;->c:Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/u;

    if-eqz p3, :cond_3

    iget v1, v0, Lb3/u;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Lb3/u;->c(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0, p2}, Lb3/u;->d(Ljava/lang/RuntimeException;)V

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Status XOR exception should be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb3/p;->c:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/u;

    iget-object v5, p0, Lb3/p;->d:Lc3/i;

    invoke-virtual {v5}, Lc3/e;->s()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lb3/p;->k(Lb3/u;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v1, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v1}, Lva/n;->d(Ll3/c;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lb3/p;->m:La3/b;

    sget-object v2, La3/b;->e:La3/b;

    invoke-virtual {p0, v2}, Lb3/p;->b(La3/b;)V

    iget-boolean v2, p0, Lb3/p;->k:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lb3/e;->m:Ll3/c;

    const/16 v3, 0xb

    iget-object v4, p0, Lb3/p;->e:Lb3/a;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb3/p;->k:Z

    :cond_0
    iget-object v0, p0, Lb3/p;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lb3/p;->g()V

    invoke-virtual {p0}, Lb3/p;->j()V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v1
.end method

.method public final i(I)V
    .locals 6

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v0}, Lva/n;->d(Ll3/c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb3/p;->m:La3/b;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb3/p;->k:Z

    iget-object v2, p0, Lb3/p;->f:Lcom/google/android/gms/internal/measurement/h3;

    iget-object v3, p0, Lb3/p;->d:Lc3/i;

    iget-object v3, v3, Lc3/e;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The connection to Google Play services was lost"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v1, :cond_0

    const-string p1, " due to service disconnection."

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    const-string p1, " due to dead object exception."

    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v3, :cond_2

    const-string p1, " Last reason for disconnect: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x14

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/measurement/h3;->g(ZLcom/google/android/gms/common/api/Status;)V

    iget-object p1, p0, Lb3/p;->n:Lb3/e;

    iget-object p1, p1, Lb3/e;->m:Ll3/c;

    const/16 v1, 0x9

    iget-object v2, p0, Lb3/p;->e:Lb3/a;

    invoke-static {p1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lb3/p;->n:Lb3/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lb3/p;->n:Lb3/e;

    iget-object p1, p1, Lb3/e;->m:Ll3/c;

    const/16 v1, 0xb

    iget-object v2, p0, Lb3/p;->e:Lb3/a;

    invoke-static {p1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lb3/p;->n:Lb3/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lb3/p;->n:Lb3/e;

    iget-object p1, p1, Lb3/e;->g:Lcom/google/android/gms/internal/measurement/h3;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p0, p0, Lb3/p;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v1, v0, Lb3/e;->m:Ll3/c;

    const/16 v2, 0xc

    iget-object p0, p0, Lb3/p;->e:Lb3/a;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v0, Lb3/e;->m:Ll3/c;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    iget-wide v2, v0, Lb3/e;->a:J

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final k(Lb3/u;)Z
    .locals 13

    instance-of v0, p1, Lb3/u;

    const-string v1, "DeadObjectException thrown while running ApiCallRunner."

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lb3/p;->d:Lc3/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->f()Z

    move-result v3

    iget-object v4, p0, Lb3/p;->f:Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {p1, v4, v3}, Lb3/u;->f(Lcom/google/android/gms/internal/measurement/h3;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lb3/u;->e(Lb3/p;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v2}, Lb3/p;->a(I)V

    invoke-virtual {v0, v1}, Lc3/e;->c(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1, p0}, Lb3/u;->b(Lb3/p;)[La3/d;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    array-length v5, v0

    if-nez v5, :cond_1

    goto :goto_4

    :cond_1
    iget-object v5, p0, Lb3/p;->d:Lc3/i;

    iget-object v5, v5, Lc3/e;->v:Lc3/g0;

    if-nez v5, :cond_2

    move-object v5, v4

    goto :goto_1

    :cond_2
    iget-object v5, v5, Lc3/g0;->b:[La3/d;

    :goto_1
    if-nez v5, :cond_3

    new-array v5, v3, [La3/d;

    :cond_3
    array-length v6, v5

    new-instance v7, Ll/b;

    invoke-direct {v7, v6}, Ll/b;-><init>(I)V

    move v8, v3

    :goto_2
    if-ge v8, v6, :cond_4

    aget-object v9, v5, v8

    iget-object v10, v9, La3/d;->a:Ljava/lang/String;

    invoke-virtual {v9}, La3/d;->b()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v10, v9}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    array-length v5, v0

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_6

    aget-object v8, v0, v6

    iget-object v9, v8, La3/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v9, v4}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8}, La3/d;->b()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    move-object v8, v4

    :cond_7
    :goto_5
    if-nez v8, :cond_8

    iget-object v0, p0, Lb3/p;->d:Lc3/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->f()Z

    move-result v3

    iget-object v4, p0, Lb3/p;->f:Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {p1, v4, v3}, Lb3/u;->f(Lcom/google/android/gms/internal/measurement/h3;Z)V

    :try_start_1
    invoke-virtual {p1, p0}, Lb3/u;->e(Lb3/p;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    invoke-virtual {p0, v2}, Lb3/p;->a(I)V

    invoke-virtual {v0, v1}, Lc3/e;->c(Ljava/lang/String;)V

    :goto_6
    return v2

    :cond_8
    iget-object v0, p0, Lb3/p;->d:Lc3/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, La3/d;->a:Ljava/lang/String;

    invoke-virtual {v8}, La3/d;->b()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x4d

    add-int/2addr v7, v9

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not execute call because it requires feature ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GoogleApiManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-boolean v0, v0, Lb3/e;->n:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1, p0}, Lb3/u;->a(Lb3/p;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Lb3/q;

    iget-object v0, p0, Lb3/p;->e:Lb3/a;

    invoke-direct {p1, v0, v8}, Lb3/q;-><init>(Lb3/a;La3/d;)V

    iget-object v0, p0, Lb3/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v1, 0x1388

    const/16 v5, 0xf

    if-ltz v0, :cond_9

    iget-object p1, p0, Lb3/p;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb3/q;

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lb3/p;->n:Lb3/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lb3/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lb3/p;->n:Lb3/e;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lb3/p;->n:Lb3/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, La3/b;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v4}, La3/b;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lb3/p;->l(La3/b;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget p0, p0, Lb3/p;->i:I

    invoke-virtual {v0, p1, p0}, Lb3/e;->b(La3/b;I)Z

    :cond_a
    :goto_7
    return v3

    :cond_b
    new-instance p0, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {p0, v8}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(La3/d;)V

    invoke-virtual {p1, p0}, Lb3/u;->d(Ljava/lang/RuntimeException;)V

    return v2
.end method

.method public final l(La3/b;)Z
    .locals 0

    sget-object p1, Lb3/e;->t:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lb3/p;->n:Lb3/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m()V
    .locals 13

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v1, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v1}, Lva/n;->d(Ll3/c;)V

    iget-object v1, p0, Lb3/p;->d:Lc3/i;

    invoke-virtual {v1}, Lc3/e;->s()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lc3/e;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v2, 0xa

    :try_start_0
    iget-object v3, v0, Lb3/e;->g:Lcom/google/android/gms/internal/measurement/h3;

    iget-object v4, v0, Lb3/e;->e:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/h3;->e(Landroid/content/Context;Lc3/i;)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    new-instance v0, La3/b;

    invoke-direct {v0, v3, v4}, La3/b;-><init>(ILandroid/app/PendingIntent;)V

    const-string v3, "GoogleApiManager"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, La3/b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x23

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "The service for "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v4}, Lb3/p;->o(La3/b;Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    new-instance v3, Lb3/r;

    iget-object v5, p0, Lb3/p;->e:Lb3/a;

    invoke-direct {v3, v0, v1, v5}, Lb3/r;-><init>(Lb3/e;Lc3/i;Lb3/a;)V

    invoke-interface {v1}, Lcom/google/android/gms/common/api/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb3/p;->j:Lb3/z;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v5, v0, Lb3/z;->h:Lo3/c;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/google/android/gms/common/api/b;->disconnect()V

    :cond_2
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v8, v0, Lb3/z;->g:Lc3/f;

    iput-object v5, v8, Lc3/f;->g:Ljava/lang/Integer;

    iget-object v5, v0, Lb3/z;->e:Le3/b;

    iget-object v6, v0, Lb3/z;->c:Landroid/content/Context;

    iget-object v12, v0, Lb3/z;->d:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v9, v8, Lc3/f;->f:Lo3/a;

    move-object v10, v0

    move-object v11, v0

    invoke-virtual/range {v5 .. v11}, Le3/b;->d(Landroid/content/Context;Landroid/os/Looper;Lc3/f;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/f;)Lc3/i;

    move-result-object v5

    iput-object v5, v0, Lb3/z;->h:Lo3/c;

    iput-object v3, v0, Lb3/z;->i:Lb3/r;

    iget-object v5, v0, Lb3/z;->f:Ljava/util/Set;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lb3/z;->h:Lo3/c;

    invoke-interface {v0}, Lo3/c;->g()V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v5, Lb3/y;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lb3/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    :try_start_1
    iput-object v3, v1, Lc3/e;->j:Lc3/d;

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v4}, Lc3/e;->v(ILandroid/os/IInterface;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, La3/b;

    invoke-direct {v1, v2}, La3/b;-><init>(I)V

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, La3/b;

    invoke-direct {v1, v2}, La3/b;-><init>(I)V

    :goto_2
    invoke-virtual {p0, v1, v0}, Lb3/p;->o(La3/b;Ljava/lang/RuntimeException;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final n(Lb3/u;)V
    .locals 2

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v0}, Lva/n;->d(Ll3/c;)V

    iget-object v0, p0, Lb3/p;->d:Lc3/i;

    invoke-virtual {v0}, Lc3/e;->s()Z

    move-result v0

    iget-object v1, p0, Lb3/p;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lb3/p;->k(Lb3/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb3/p;->j()V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb3/p;->m:La3/b;

    if-eqz p1, :cond_3

    iget v0, p1, La3/b;->b:I

    if-eqz v0, :cond_2

    iget-object v0, p1, La3/b;->c:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb3/p;->o(La3/b;Ljava/lang/RuntimeException;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lb3/p;->m()V

    return-void
.end method

.method public final o(La3/b;Ljava/lang/RuntimeException;)V
    .locals 6

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v0}, Lva/n;->d(Ll3/c;)V

    iget-object v0, p0, Lb3/p;->j:Lb3/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb3/z;->h:Lo3/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->disconnect()V

    :cond_0
    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v0, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v0}, Lva/n;->d(Ll3/c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb3/p;->m:La3/b;

    iget-object v1, p0, Lb3/p;->n:Lb3/e;

    iget-object v1, v1, Lb3/e;->g:Lcom/google/android/gms/internal/measurement/h3;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0, p1}, Lb3/p;->b(La3/b;)V

    iget-object v1, p0, Lb3/p;->d:Lc3/i;

    instance-of v1, v1, Le3/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p1, La3/b;->b:I

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lb3/p;->n:Lb3/e;

    iput-boolean v2, v1, Lb3/e;->b:Z

    iget-object v1, v1, Lb3/e;->m:Ll3/c;

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget v1, p1, La3/b;->b:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    sget-object p1, Lb3/e;->q:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lb3/p;->e(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v1, p0, Lb3/p;->c:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p1, p0, Lb3/p;->m:La3/b;

    return-void

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lb3/p;->n:Lb3/e;

    iget-object p1, p1, Lb3/e;->m:Ll3/c;

    invoke-static {p1}, Lva/n;->d(Ll3/c;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lb3/p;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lb3/p;->n:Lb3/e;

    iget-boolean p2, p2, Lb3/e;->n:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lb3/p;->e:Lb3/a;

    invoke-static {p2, p1}, Lb3/e;->c(Lb3/a;La3/b;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v2}, Lb3/p;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    iget-object p2, p0, Lb3/p;->c:Ljava/util/LinkedList;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lb3/p;->l(La3/b;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Lb3/p;->n:Lb3/e;

    iget v0, p0, Lb3/p;->i:I

    invoke-virtual {p2, p1, v0}, Lb3/e;->b(La3/b;I)Z

    move-result p2

    if-nez p2, :cond_9

    iget p2, p1, La3/b;->b:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_7

    iput-boolean v2, p0, Lb3/p;->k:Z

    :cond_7
    iget-boolean p2, p0, Lb3/p;->k:Z

    if-eqz p2, :cond_8

    iget-object p1, p0, Lb3/p;->n:Lb3/e;

    iget-object p1, p1, Lb3/e;->m:Ll3/c;

    const/16 p2, 0x9

    iget-object v0, p0, Lb3/p;->e:Lb3/a;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lb3/p;->n:Lb3/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_8
    iget-object p2, p0, Lb3/p;->e:Lb3/a;

    invoke-static {p2, p1}, Lb3/e;->c(Lb3/a;La3/b;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb3/p;->e(Lcom/google/android/gms/common/api/Status;)V

    :cond_9
    return-void

    :cond_a
    iget-object p2, p0, Lb3/p;->e:Lb3/a;

    invoke-static {p2, p1}, Lb3/e;->c(Lb3/a;La3/b;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb3/p;->e(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final p()V
    .locals 6

    iget-object v0, p0, Lb3/p;->n:Lb3/e;

    iget-object v1, v0, Lb3/e;->m:Ll3/c;

    invoke-static {v1}, Lva/n;->d(Ll3/c;)V

    sget-object v1, Lb3/e;->p:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v1}, Lb3/p;->e(Lcom/google/android/gms/common/api/Status;)V

    iget-object v2, p0, Lb3/p;->f:Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/h3;->g(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v1, p0, Lb3/p;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v3, [Lb3/h;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lb3/h;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v4, Lb3/b0;

    new-instance v5, Lr3/i;

    invoke-direct {v5}, Lr3/i;-><init>()V

    invoke-direct {v4, v5}, Lb3/b0;-><init>(Lr3/i;)V

    invoke-virtual {p0, v4}, Lb3/p;->n(Lb3/u;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, La3/b;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, La3/b;-><init>(I)V

    invoke-virtual {p0, v1}, Lb3/p;->b(La3/b;)V

    iget-object v1, p0, Lb3/p;->d:Lc3/i;

    invoke-virtual {v1}, Lc3/e;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lb3/o;

    invoke-direct {v2, p0}, Lb3/o;-><init>(Lb3/p;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lb3/e;->m:Ll3/c;

    new-instance v0, Lb3/y;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lb3/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
