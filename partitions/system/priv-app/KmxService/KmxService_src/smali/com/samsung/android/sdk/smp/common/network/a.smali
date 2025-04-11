.class public final Lcom/samsung/android/sdk/smp/common/network/a;
.super Lv1/h;
.source "SourceFile"


# instance fields
.field public final p:Ljava/lang/String;

.field public final q:Lw1/i;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw1/i;Lw1/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p5}, Lv1/h;-><init>(ILjava/lang/String;Lw1/i;)V

    const-class p1, Lcom/samsung/android/sdk/smp/common/network/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/network/a;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/smp/common/network/a;->q:Lw1/i;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/common/network/a;->t:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/common/network/a;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/common/network/a;->q:Lw1/i;

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lw1/i;->a:Z

    iput-object p1, p0, Lw1/i;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l(Lv1/f;)Lv1/j;
    .locals 8

    iget-object v0, p1, Lv1/f;->b:[B

    array-length v1, v0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long/2addr v2, v4

    long-to-double v2, v2

    int-to-double v4, v1

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest$DiscFullError;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest$DiscFullError;-><init>()V

    new-instance p1, Lv1/j;

    invoke-direct {p1, p0}, Lv1/j;-><init>(Lcom/android/volley/VolleyError;)V

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/common/network/a;->n([B)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lg2/m;->l(Lv1/f;)Lv1/a;

    move-result-object p1

    new-instance v0, Lv1/j;

    invoke-direct {v0, p0, p1}, Lv1/j;-><init>(Ljava/lang/Object;Lv1/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/volley/VolleyError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    new-instance p0, Lv1/j;

    invoke-direct {p0, p1}, Lv1/j;-><init>(Lcom/android/volley/VolleyError;)V

    return-object p0
.end method

.method public final n([B)Ljava/io/File;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/network/a;->u:Ljava/lang/String;

    const-string v1, "File : "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v5, p0, Lcom/samsung/android/sdk/smp/common/network/a;->p:Ljava/lang/String;

    if-nez v4, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "fail to make dirs"

    invoke-static {v5, p0}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/common/network/a;->t:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    return-object v3

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object p1, p0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw p1
.end method
