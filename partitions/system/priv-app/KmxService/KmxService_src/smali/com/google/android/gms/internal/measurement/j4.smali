.class public final Lcom/google/android/gms/internal/measurement/j4;
.super Lcom/google/android/gms/internal/measurement/h;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/m3;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/j4;->c:I

    const-string v0, "internal.appMetadata"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/j4;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld/s0;)V
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/j4;->c:I

    const-string v1, "internal.logger"

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/j4;->d:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/h;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/gms/internal/measurement/l8;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/measurement/l8;-><init>(Lcom/google/android/gms/internal/measurement/j4;ZZ)V

    const-string v3, "log"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/measurement/w7;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/w7;-><init>(I)V

    const-string v4, "silent"

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/h;

    new-instance v4, Lcom/google/android/gms/internal/measurement/l8;

    invoke-direct {v4, p0, v0, v0}, Lcom/google/android/gms/internal/measurement/l8;-><init>(Lcom/google/android/gms/internal/measurement/j4;ZZ)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/h;->h(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/w7;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/w7;-><init>(I)V

    const-string v0, "unmonitored"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/h;

    new-instance v0, Lcom/google/android/gms/internal/measurement/l8;

    invoke-direct {v0, p0, v2, v2}, Lcom/google/android/gms/internal/measurement/l8;-><init>(Lcom/google/android/gms/internal/measurement/j4;ZZ)V

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/measurement/h;->h(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    return-void
.end method

.method public constructor <init>(Lp1/e;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/j4;->c:I

    const-string v0, "internal.registerCallback"

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/j4;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp1/v;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/j4;->c:I

    const-string v0, "internal.eventLogger"

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/j4;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/firebase/messaging/r;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/j4;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/h;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/j4;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d3;->k(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :pswitch_1
    return-object v0

    :pswitch_2
    invoke-static {v6, v5, p2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v1}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v3}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/d3;->a(D)D

    move-result-wide v3

    double-to-long v3, v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/k;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/measurement/k;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/d3;->A(Lcom/google/android/gms/internal/measurement/k;)Ljava/util/HashMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    check-cast p0, Lp1/v;

    iget-object p0, p0, Lp1/v;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    new-instance p2, Lcom/google/android/gms/internal/measurement/b;

    invoke-direct {p2, v3, v4, v1, p1}, Lcom/google/android/gms/internal/measurement/b;-><init>(JLjava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :goto_1
    invoke-static {v6, v5, p2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v1}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v1}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    instance-of v4, v1, Lcom/google/android/gms/internal/measurement/m;

    if-eqz v4, :cond_7

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/k;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/google/android/gms/internal/measurement/k;

    const-string p2, "type"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/k;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/k;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p2

    const-string v2, "priority"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/k;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/k;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/d3;->g(D)I

    move-result p1

    goto :goto_2

    :cond_1
    const/16 p1, 0x3e8

    :goto_2
    check-cast p0, Lp1/e;

    check-cast v1, Lcom/google/android/gms/internal/measurement/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "create"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lp1/e;->c:Ljava/lang/Object;

    goto :goto_3

    :cond_2
    const-string v2, "edit"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lp1/e;->b:Ljava/lang/Object;

    :goto_3
    check-cast p0, Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v3

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unknown callback type: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Undefined rule type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid callback params"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid callback type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
