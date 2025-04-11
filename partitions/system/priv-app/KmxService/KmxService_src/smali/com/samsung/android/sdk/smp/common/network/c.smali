.class public final Lcom/samsung/android/sdk/smp/common/network/c;
.super Lv1/h;
.source "SourceFile"


# static fields
.field public static final u:Ljava/lang/String;


# instance fields
.field public final p:Ljava/lang/Object;

.field public q:Lw1/i;

.field public final t:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const-string v1, "application/json; charset=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smp/common/network/c;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lw1/i;Lw1/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lv1/h;-><init>(ILjava/lang/String;Lw1/i;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/network/c;->p:Ljava/lang/Object;

    iput-object p4, p0, Lcom/samsung/android/sdk/smp/common/network/c;->q:Lw1/i;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/common/network/c;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/network/c;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/smp/common/network/c;->q:Lw1/i;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lw1/i;->a:Z

    iput-object p1, p0, Lw1/i;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final d()[B
    .locals 4

    const-string v0, "utf-8"

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/common/network/c;->t:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    const-string p0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    invoke-static {p0, v2}, Lv1/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Volley"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/sdk/smp/common/network/c;->u:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final h()[B
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/network/c;->d()[B

    move-result-object p0

    return-object p0
.end method

.method public final l(Lv1/f;)Lv1/j;
    .locals 2

    iget-object p0, p1, Lv1/f;->b:[B

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lv1/f;->c:Ljava/util/Map;

    invoke-static {v1}, Lg2/m;->m(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {p1}, Lg2/m;->l(Lv1/f;)Lv1/a;

    move-result-object p0

    new-instance p1, Lv1/j;

    invoke-direct {p1, v0, p0}, Lv1/j;-><init>(Ljava/lang/Object;Lv1/a;)V

    return-object p1
.end method
