.class public final Landroidx/work/v;
.super Landroidx/work/y;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 14

    const-string v0, "repeatIntervalTimeUnit"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;

    invoke-direct {p0, v0}, Landroidx/work/y;-><init>(Ljava/lang/Class;)V

    iget-object p0, p0, Landroidx/work/y;->b:Lp1/q;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v2, 0xdbba0

    cmp-long p1, v0, v2

    sget-object v4, Lp1/q;->u:Ljava/lang/String;

    const-string v5, "Interval duration lesser than minimum allowed value; Changed to 900000"

    if-gez p1, :cond_0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroidx/work/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-gez p1, :cond_1

    move-wide v6, v2

    goto :goto_0

    :cond_1
    move-wide v6, v0

    :goto_0
    if-gez p1, :cond_2

    move-wide v8, v2

    goto :goto_1

    :cond_2
    move-wide v8, v0

    :goto_1
    cmp-long p1, v6, v2

    if-gez p1, :cond_3

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroidx/work/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v2, v6

    :goto_2
    iput-wide v2, p0, Lp1/q;->h:J

    const-wide/32 v0, 0x493e0

    cmp-long p1, v8, v0

    if-gez p1, :cond_5

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p1

    const-string v0, "Flex duration lesser than minimum allowed value; Changed to 300000"

    invoke-virtual {p1, v4, v0}, Landroidx/work/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-wide v0, p0, Lp1/q;->h:J

    cmp-long p1, v8, v0

    if-lez p1, :cond_6

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flex duration greater than interval duration; Changed to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroidx/work/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-wide/32 v10, 0x493e0

    iget-wide v12, p0, Lp1/q;->h:J

    invoke-static/range {v8 .. v13}, Lp9/d;->q(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lp1/q;->i:J

    return-void
.end method


# virtual methods
.method public final b()Landroidx/work/z;
    .locals 1

    iget-object v0, p0, Landroidx/work/y;->b:Lp1/q;

    iget-boolean v0, v0, Lp1/q;->q:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/work/w;

    invoke-direct {v0, p0}, Landroidx/work/w;-><init>(Landroidx/work/v;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PeriodicWorkRequests cannot be expedited"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Landroidx/work/y;
    .locals 0

    return-object p0
.end method
