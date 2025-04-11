.class public Lcom/android/server/locksettings/WeaverHidlAdapter;
.super Ljava/lang/Object;
.source "WeaverHidlAdapter.java"

# interfaces
.implements Landroid/hardware/weaver/IWeaver;


# instance fields
.field public final mImpl:Landroid/hardware/weaver/V1_0/IWeaver;


# direct methods
.method public static synthetic $r8$lambda$ANgLbwlrvQh2SJ398yoY8qSAD_U([Landroid/hardware/weaver/WeaverConfig;ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/WeaverHidlAdapter;->lambda$getConfig$0([Landroid/hardware/weaver/WeaverConfig;ILandroid/hardware/weaver/V1_0/WeaverConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QTI4PBQQJ1534oH6xS1dXJlxJ1k([Landroid/hardware/weaver/WeaverReadResponse;ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/WeaverHidlAdapter;->lambda$read$1([Landroid/hardware/weaver/WeaverReadResponse;ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/weaver/V1_0/IWeaver;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    return-void
.end method

.method public static fromByteArrayList(Ljava/util/ArrayList;)[B
    .locals 3

    .line 135
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 136
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 137
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$getConfig$0([Landroid/hardware/weaver/WeaverConfig;ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .locals 1

    if-nez p1, :cond_0

    .line 50
    new-instance p1, Landroid/hardware/weaver/WeaverConfig;

    invoke-direct {p1}, Landroid/hardware/weaver/WeaverConfig;-><init>()V

    .line 51
    iget v0, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    iput v0, p1, Landroid/hardware/weaver/WeaverConfig;->slots:I

    .line 52
    iget v0, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    iput v0, p1, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    .line 53
    iget p2, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    iput p2, p1, Landroid/hardware/weaver/WeaverConfig;->valueSize:I

    const/4 p2, 0x0

    .line 54
    aput-object p1, p0, p2

    goto :goto_0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get HIDL weaver config. status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", slots: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WeaverHidlAdapter"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$read$1([Landroid/hardware/weaver/WeaverReadResponse;ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .locals 5

    .line 71
    new-instance v0, Landroid/hardware/weaver/WeaverReadResponse;

    invoke-direct {v0}, Landroid/hardware/weaver/WeaverReadResponse;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected status in read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "WeaverHidlAdapter"

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput v2, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    goto :goto_0

    .line 78
    :cond_0
    iput v3, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    goto :goto_0

    .line 81
    :cond_1
    iput v3, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    goto :goto_0

    .line 84
    :cond_2
    iput v2, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    goto :goto_0

    .line 75
    :cond_3
    iput v1, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 91
    :goto_0
    iget p1, p2, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    int-to-long v2, p1

    iput-wide v2, v0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    .line 92
    iget-object p1, p2, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/locksettings/WeaverHidlAdapter;->fromByteArrayList(Ljava/util/ArrayList;)[B

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/weaver/WeaverReadResponse;->value:[B

    .line 93
    aput-object v0, p0, v1

    return-void
.end method

.method public static toByteArrayList([B)Ljava/util/ArrayList;
    .locals 3

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 128
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 129
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 123
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "WeaverHidlAdapter does not support asBinder"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConfig()Landroid/hardware/weaver/WeaverConfig;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/weaver/WeaverConfig;

    .line 48
    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    new-instance v1, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda1;-><init>([Landroid/hardware/weaver/WeaverConfig;)V

    invoke-interface {p0, v1}, Landroid/hardware/weaver/V1_0/IWeaver;->getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getHidlService()Landroid/hardware/weaver/V1_0/IWeaver;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    return-object p0
.end method

.method public read(I[B)Landroid/hardware/weaver/WeaverReadResponse;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/weaver/WeaverReadResponse;

    .line 68
    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 69
    invoke-static {p2}, Lcom/android/server/locksettings/WeaverHidlAdapter;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v1, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;-><init>([Landroid/hardware/weaver/WeaverReadResponse;)V

    .line 68
    invoke-interface {p0, p1, p2, v1}, Landroid/hardware/weaver/V1_0/IWeaver;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public write(I[B[B)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/WeaverHidlAdapter;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Lcom/android/server/locksettings/WeaverHidlAdapter;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/weaver/V1_0/IWeaver;->write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance p1, Landroid/os/ServiceSpecificException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed IWeaver.write call, status: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
