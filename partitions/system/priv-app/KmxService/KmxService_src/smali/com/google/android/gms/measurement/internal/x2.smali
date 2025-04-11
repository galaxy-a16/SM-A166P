.class public final Lcom/google/android/gms/measurement/internal/x2;
.super Lcom/google/android/gms/measurement/internal/a4;
.source "SourceFile"


# instance fields
.field public c:C

.field public d:J

.field public e:Ljava/lang/String;

.field public final f:Lcom/google/android/gms/measurement/internal/v2;

.field public final g:Lcom/google/android/gms/measurement/internal/v2;

.field public final h:Lcom/google/android/gms/measurement/internal/v2;

.field public final i:Lcom/google/android/gms/measurement/internal/v2;

.field public final j:Lcom/google/android/gms/measurement/internal/v2;

.field public final k:Lcom/google/android/gms/measurement/internal/v2;

.field public final l:Lcom/google/android/gms/measurement/internal/v2;

.field public final m:Lcom/google/android/gms/measurement/internal/v2;

.field public final n:Lcom/google/android/gms/measurement/internal/v2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/a4;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    const/4 p1, 0x0

    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/x2;->c:C

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/x2;->d:J

    new-instance v0, Lcom/google/android/gms/measurement/internal/v2;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/v2;-><init>(Lcom/google/android/gms/measurement/internal/x2;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    new-instance v0, Lcom/google/android/gms/measurement/internal/v2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/v2;-><init>(Lcom/google/android/gms/measurement/internal/x2;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->g:Lcom/google/android/gms/measurement/internal/v2;

    new-instance v0, Lcom/google/android/gms/measurement/internal/v2;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/v2;-><init>(Lcom/google/android/gms/measurement/internal/x2;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->h:Lcom/google/android/gms/measurement/internal/v2;

    new-instance v0, Lcom/google/android/gms/measurement/internal/v2;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/v2;-><init>(Lcom/google/android/gms/measurement/internal/x2;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    new-instance v0, Lcom/google/android/gms/measurement/internal/v2;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/v2;-><init>(Lcom/google/android/gms/measurement/internal/x2;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->j:Lcom/google/android/gms/measurement/internal/v2;

    new-instance v0, Lcom/google/android/gms/measurement/internal/v2;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/v2;-><init>(Lcom/google/android/gms/measurement/internal/x2;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    new-instance v0, Lcom/google/android/gms/measurement/internal/v2;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/v2;-><init>(Lcom/google/android/gms/measurement/internal/x2;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->l:Lcom/google/android/gms/measurement/internal/v2;

    new-instance v0, Lcom/google/android/gms/measurement/internal/v2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/v2;-><init>(Lcom/google/android/gms/measurement/internal/x2;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    new-instance v0, Lcom/google/android/gms/measurement/internal/v2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/v2;-><init>(Lcom/google/android/gms/measurement/internal/x2;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    return-void
.end method

.method public static t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/w2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/w2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static u(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/gms/measurement/internal/x2;->v(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p0}, Lcom/google/android/gms/measurement/internal/x2;->v(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p0}, Lcom/google/android/gms/measurement/internal/x2;->v(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ", "

    if-nez p1, :cond_2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :cond_1
    instance-of v1, p0, Ljava/lang/Long;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, "-"

    if-eqz v1, :cond_5

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    move-object p1, p0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x64

    cmp-long v1, v5, v7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-gez v1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x2d

    if-ne p0, v1, :cond_4

    move-object v0, v4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v2

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    add-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v1, p0, Ljava/lang/Throwable;

    if-eqz v1, :cond_f

    check-cast p0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x2e

    if-eqz v4, :cond_8

    move-object p1, v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ne v4, v2, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v4, p0

    move v6, v3

    :goto_2
    if-ge v6, v4, :cond_e

    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v8, v0

    goto :goto_3

    :cond_b
    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-ne v9, v2, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_d
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_e
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of v0, p0, Lcom/google/android/gms/measurement/internal/w2;

    if-eqz v0, :cond_10

    check-cast p0, Lcom/google/android/gms/measurement/internal/w2;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/w2;->a:Ljava/lang/String;

    return-object p0

    :cond_10
    if-eqz p1, :cond_11

    return-object v4

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final l()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o()Lcom/google/android/gms/measurement/internal/v2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    return-object p0
.end method

.method public final p()Lcom/google/android/gms/measurement/internal/v2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    return-object p0
.end method

.method public final q()Lcom/google/android/gms/measurement/internal/v2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    return-object p0
.end method

.method public final r()Lcom/google/android/gms/measurement/internal/v2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    return-object p0
.end method

.method public final s()Lcom/google/android/gms/measurement/internal/v2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    return-object p0
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "FA"

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->e:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->e:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->e:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final x(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/x2;->w()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p2, p4, p5, p6, p7}, Lcom/google/android/gms/measurement/internal/x2;->u(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/x2;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p3, :cond_4

    const/4 p2, 0x5

    if-lt p1, p2, :cond_4

    invoke-static {p4}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p2, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    const/4 p3, 0x6

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/x2;->w()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Scheduler not set. Not logging error/warn"

    :goto_0
    invoke-static {p3, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/a4;->b:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/x2;->w()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Scheduler not initialized. Not logging error/warn"

    goto :goto_0

    :cond_2
    const/16 p3, 0x9

    if-lt p1, p3, :cond_3

    const/16 p1, 0x8

    :cond_3
    move v2, p1

    new-instance p1, Landroidx/fragment/app/q1;

    const/4 v7, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Landroidx/fragment/app/q1;-><init>(Ljava/lang/Object;ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
