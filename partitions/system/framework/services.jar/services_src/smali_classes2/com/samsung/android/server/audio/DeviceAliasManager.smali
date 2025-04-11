.class public Lcom/samsung/android/server/audio/DeviceAliasManager;
.super Ljava/lang/Object;
.source "DeviceAliasManager.java"


# instance fields
.field public final mDevices:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    .line 38
    new-instance v1, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    const/4 v2, 0x1

    filled-new-array {v2}, [I

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    filled-new-array {v4, v5}, [I

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    new-instance v1, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    filled-new-array {v3}, [I

    move-result-object v3

    filled-new-array {v4, v5}, [I

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    new-array v1, v0, [I

    :goto_0
    if-ge v4, v0, :cond_1

    const/4 v2, 0x3

    if-ne v4, v2, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    aput v4, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    const/high16 v3, 0x20000000

    const v4, 0x20000002

    filled-new-array {v3, v4}, [I

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    const/16 v5, 0x80

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    filled-new-array {v5, v4}, [I

    move-result-object v6

    invoke-direct {v2, v6, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    new-instance v0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    filled-new-array {v3, v5}, [I

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    invoke-virtual {p0, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V
    .locals 4

    .line 69
    iget-object p0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    if-nez p0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->mAliases:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 75
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->isExcludedStream(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    invoke-interface {p3, v2}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;->run(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "\nDevice Aliases:"

    .line 82
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
