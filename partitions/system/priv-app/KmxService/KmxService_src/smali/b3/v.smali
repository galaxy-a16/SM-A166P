.class public final Lb3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/d;


# instance fields
.field public final a:Lb3/e;

.field public final b:I

.field public final c:Lb3/a;

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Lb3/e;ILb3/a;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/v;->a:Lb3/e;

    iput p2, p0, Lb3/v;->b:I

    iput-object p3, p0, Lb3/v;->c:Lb3/a;

    iput-wide p4, p0, Lb3/v;->d:J

    iput-wide p6, p0, Lb3/v;->e:J

    return-void
.end method


# virtual methods
.method public final e(Lr3/h;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lb3/v;->a:Lb3/e;

    invoke-virtual {v1}, Lb3/e;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc3/l;->f()Lc3/l;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lb3/v;->a:Lb3/e;

    iget-object v2, v0, Lb3/v;->c:Lb3/a;

    iget-object v1, v1, Lb3/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/p;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lb3/p;->d:Lc3/i;

    instance-of v2, v1, Lc3/e;

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-wide v2, v0, Lb3/v;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v1, v1, Lc3/e;->q:I

    const/16 v18, 0x0

    const/16 v19, 0x64

    iget-object v15, v0, Lb3/v;->a:Lb3/e;

    invoke-virtual/range {p1 .. p1}, Lr3/h;->f()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_3

    move v8, v3

    move v9, v8

    goto :goto_3

    :cond_3
    move-object/from16 v3, p1

    check-cast v3, Lr3/o;

    iget-boolean v3, v3, Lr3/o;->d:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x64

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lr3/h;->d()Ljava/lang/Exception;

    move-result-object v3

    instance-of v6, v3, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v6, :cond_6

    check-cast v3, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/ApiException;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    iget v6, v3, Lcom/google/android/gms/common/api/Status;->b:I

    iget-object v3, v3, Lcom/google/android/gms/common/api/Status;->e:La3/b;

    if-nez v3, :cond_5

    move v3, v7

    goto :goto_1

    :cond_5
    iget v3, v3, La3/b;->b:I

    :goto_1
    move v9, v3

    move v8, v6

    goto :goto_3

    :cond_6
    const/16 v3, 0x65

    :goto_2
    move v8, v3

    move v9, v7

    :goto_3
    if-eqz v2, :cond_7

    iget-wide v4, v0, Lb3/v;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v10, v0, Lb3/v;->e:J

    sub-long/2addr v6, v10

    long-to-int v6, v6

    move-wide v12, v2

    move-wide v10, v4

    move/from16 v17, v6

    goto :goto_4

    :cond_7
    move-wide v10, v4

    move-wide v12, v10

    move/from16 v17, v7

    :goto_4
    new-instance v2, Lc3/k;

    iget v7, v0, Lb3/v;->b:I

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object v6, v2

    move-object v3, v15

    move-object v15, v0

    move/from16 v16, v1

    invoke-direct/range {v6 .. v17}, Lc3/k;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    const/16 v0, 0x1388

    int-to-long v9, v0

    iget-object v0, v3, Lb3/e;->m:Ll3/c;

    new-instance v1, Lb3/w;

    move-object v6, v1

    move-object v7, v2

    move/from16 v8, v18

    move/from16 v11, v19

    invoke-direct/range {v6 .. v11}, Lb3/w;-><init>(Lc3/k;IJI)V

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    :goto_5
    return-void
.end method
