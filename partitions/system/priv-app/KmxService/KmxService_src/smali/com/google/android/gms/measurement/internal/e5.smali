.class public final Lcom/google/android/gms/measurement/internal/e5;
.super Lcom/google/android/gms/measurement/internal/n5;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/HashMap;

.field public final e:Lcom/google/android/gms/measurement/internal/f3;

.field public final f:Lcom/google/android/gms/measurement/internal/f3;

.field public final g:Lcom/google/android/gms/measurement/internal/f3;

.field public final h:Lcom/google/android/gms/measurement/internal/f3;

.field public final i:Lcom/google/android/gms/measurement/internal/f3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/q5;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/n5;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e5;->d:Ljava/util/HashMap;

    new-instance p1, Lcom/google/android/gms/measurement/internal/f3;

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "last_delete_stale"

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e5;->e:Lcom/google/android/gms/measurement/internal/f3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/f3;

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "backoff"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e5;->f:Lcom/google/android/gms/measurement/internal/f3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/f3;

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "last_upload"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e5;->g:Lcom/google/android/gms/measurement/internal/f3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/f3;

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "last_upload_attempt"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e5;->h:Lcom/google/android/gms/measurement/internal/f3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/f3;

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "midnight_offset"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e5;->i:Lcom/google/android/gms/measurement/internal/f3;

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 0

    return-void
.end method

.method public final o(Ljava/lang/String;)Landroid/util/Pair;
    .locals 8

    const-string v0, ""

    invoke-virtual {p0}, Lb0/h;->k()V

    iget-object v1, p0, Lb0/h;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e5;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/d5;

    if-eqz v5, :cond_1

    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/d5;->c:J

    cmp-long v6, v3, v6

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/Pair;

    iget-boolean p1, v5, Lcom/google/android/gms/measurement/internal/d5;->b:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/d5;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :goto_0
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v6, Lcom/google/android/gms/measurement/internal/o2;->c:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v5, p1, v6}, Lcom/google/android/gms/measurement/internal/e;->p(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)J

    move-result-wide v5

    add-long/2addr v5, v3

    :try_start_0
    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {v1}, Lx2/a;->a(Landroid/content/Context;)Ld/t0;

    move-result-object v1

    iget-object v3, v1, Ld/t0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v4, Lcom/google/android/gms/measurement/internal/d5;

    iget-boolean v1, v1, Ld/t0;->b:Z

    invoke-direct {v4, v5, v6, v3, v1}, Lcom/google/android/gms/measurement/internal/d5;-><init>(JLjava/lang/String;Z)V

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/google/android/gms/measurement/internal/d5;

    iget-boolean v1, v1, Ld/t0;->b:Z

    invoke-direct {v4, v5, v6, v0, v1}, Lcom/google/android/gms/measurement/internal/d5;-><init>(JLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v3, "Unable to get advertising id"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/measurement/internal/d5;

    const/4 v1, 0x0

    invoke-direct {v4, v5, v6, v0, v1}, Lcom/google/android/gms/measurement/internal/d5;-><init>(JLjava/lang/String;Z)V

    :goto_1
    invoke-virtual {p0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Landroid/util/Pair;

    iget-boolean p1, v4, Lcom/google/android/gms/measurement/internal/d5;->b:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/d5;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final p(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lb0/h;->k()V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/e5;->o(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "00000000-0000-0000-0000-000000000000"

    :goto_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/u5;->s()Ljava/security/MessageDigest;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    const-string p0, "%032X"

    invoke-static {p2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
