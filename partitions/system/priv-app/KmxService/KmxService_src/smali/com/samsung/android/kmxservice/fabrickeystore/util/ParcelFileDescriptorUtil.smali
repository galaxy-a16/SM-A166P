.class public Lcom/samsung/android/kmxservice/fabrickeystore/util/ParcelFileDescriptorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParcelFileDescriptorUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pipeTo(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;[BZ)Landroid/os/ParcelFileDescriptor;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    aget-object v2, v1, v2

    new-instance v9, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;

    const/4 v3, 0x0

    aget-object v7, v1, v3

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper$TransferStream;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;[BLandroid/os/ParcelFileDescriptor;Z)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    return-object v2

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/util/ParcelFileDescriptorUtil;->TAG:Ljava/lang/String;

    const-string p1, "pipe error"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
