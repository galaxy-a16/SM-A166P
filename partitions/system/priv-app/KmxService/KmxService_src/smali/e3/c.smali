.class public final Le3/c;
.super Lcom/google/android/gms/common/api/d;
.source "SourceFile"


# static fields
.field public static final i:Lva/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lm1/e;

    invoke-direct {v0}, Lm1/e;-><init>()V

    new-instance v1, Le3/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le3/b;-><init>(I)V

    new-instance v2, Lva/f;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Lva/f;-><init>(Ljava/lang/String;Le3/b;Lm1/e;)V

    sput-object v2, Le3/c;->i:Lva/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lc3/o;->b:Lc3/o;

    sget-object v0, Le3/c;->i:Lva/f;

    sget-object v1, Lcom/google/android/gms/common/api/c;->b:Lcom/google/android/gms/common/api/c;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/common/api/d;-><init>(Landroid/content/Context;Lva/f;Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method public final b(Lc3/n;)Lr3/o;
    .locals 13

    new-instance v0, Lb3/j;

    invoke-direct {v0}, Lb3/j;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [La3/d;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->k:La3/d;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, v0, Lb3/j;->b:Ljava/lang/Object;

    iput-boolean v3, v0, Lb3/j;->c:Z

    new-instance v2, Ld/s0;

    const/16 v4, 0x10

    invoke-direct {v2, p1, v4}, Ld/s0;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Lb3/j;->e:Ljava/lang/Object;

    new-instance p1, Lb3/j;

    check-cast v1, [La3/d;

    iget v2, v0, Lb3/j;->d:I

    invoke-direct {p1, v0, v1, v3, v2}, Lb3/j;-><init>(Lb3/j;[La3/d;ZI)V

    new-instance v0, Lr3/i;

    invoke-direct {v0}, Lr3/i;-><init>()V

    iget-object v9, p0, Lcom/google/android/gms/common/api/d;->h:Lb3/e;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Lb3/j;->d:I

    iget-object v10, v9, Lb3/e;->m:Ll3/c;

    iget-object v11, v0, Lr3/i;->a:Lr3/o;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/common/api/d;->e:Lb3/a;

    invoke-virtual {v9}, Lb3/e;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lc3/l;->f()Lc3/l;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lb3/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v1, v12

    move-object v2, v9

    invoke-direct/range {v1 .. v8}, Lb3/v;-><init>(Lb3/e;ILb3/a;JJ)V

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lb3/m;

    invoke-direct {v2, v10}, Lb3/m;-><init>(Ll3/c;)V

    invoke-virtual {v11, v2, v1}, Lr3/o;->a(Ljava/util/concurrent/Executor;Lr3/d;)Lr3/o;

    :cond_1
    new-instance v1, Lb3/a0;

    iget-object v2, p0, Lcom/google/android/gms/common/api/d;->g:Landroidx/work/impl/x;

    invoke-direct {v1, p1, v0, v2}, Lb3/a0;-><init>(Lb3/j;Lr3/i;Landroidx/work/impl/x;)V

    new-instance p1, Lb3/x;

    iget-object v0, v9, Lb3/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p1, v1, v0, p0}, Lb3/x;-><init>(Lb3/a0;ILcom/google/android/gms/common/api/d;)V

    const/4 p0, 0x4

    invoke-virtual {v10, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v10, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v11
.end method
