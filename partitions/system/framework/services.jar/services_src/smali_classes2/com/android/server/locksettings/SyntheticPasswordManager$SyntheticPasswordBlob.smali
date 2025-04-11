.class public Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# instance fields
.field public mContent:[B

.field public mProtectorType:B

.field public mVersion:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(BB[B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    .locals 1

    .line 999
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;-><init>()V

    .line 1000
    iput-byte p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    .line 1001
    iput-byte p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    .line 1002
    iput-object p2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    .locals 3

    .line 1007
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;-><init>()V

    const/4 v1, 0x0

    .line 1008
    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    const/4 v1, 0x1

    .line 1009
    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    const/4 v1, 0x2

    .line 1010
    array-length v2, p0

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    return-object v0
.end method


# virtual methods
.method public toByte()[B
    .locals 5

    .line 1015
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 1016
    iget-byte v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 1017
    iget-byte p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    aput-byte p0, v1, v2

    const/4 p0, 0x2

    .line 1018
    array-length v2, v0

    invoke-static {v0, v4, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
