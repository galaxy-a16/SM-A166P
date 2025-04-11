.class public Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
.super Ljava/lang/Object;
.source "TestHarnessModeService.java"


# instance fields
.field public final mAdbKeys:[B

.field public final mAdbTempKeys:[B

.field public final mVersion:I


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput p1, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mVersion:I

    .line 427
    iput-object p2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    .line 428
    iput-object p3, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    const/4 v0, 0x2

    .line 422
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>(I[B[B)V

    return-void
.end method

.method public static fromBytes([B)Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
    .locals 3

    .line 433
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 434
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 438
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 440
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 441
    new-array v1, v1, [B

    .line 442
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 443
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 444
    new-array v2, v2, [B

    .line 445
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 446
    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>(I[B[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 448
    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;

    invoke-direct {v0, p0}, Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public toBytes()[B
    .locals 3

    .line 454
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 455
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x2

    .line 456
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 457
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 458
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 459
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 460
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 461
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 462
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 464
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
