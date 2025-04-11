.class public interface abstract Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract containsKey(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract createFabricKey(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract createServiceKey(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract decryptData(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method public abstract decryptFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z
.end method

.method public abstract decryptStream(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract deleteChainSigningKey(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteKey(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract deleteKeys(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract encryptData(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method public abstract encryptFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z
.end method

.method public abstract encryptStream(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract exportFabricKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)[B
.end method

.method public abstract exportFabricKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B[B)Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;
.end method

.method public abstract exportServiceKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract exportServiceKey(Ljava/lang/String;Ljava/util/List;[Ljava/security/cert/X509Certificate;[BZ)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/security/cert/X509Certificate;",
            "[BZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getChainSigningKey(Ljava/lang/String;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
.end method

.method public abstract getMemberKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Triple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Triple<",
            "[B[B[",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMemberKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;
.end method

.method public abstract getRecoveryData(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getSakUid(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract importFabricKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B)Z
.end method

.method public abstract importFabricKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B[B)Z
.end method

.method public abstract importServiceKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setChunkSize(I)Z
.end method

.method public abstract setRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method public abstract signChainMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method public abstract validateRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method public abstract verifyChainMessage([B[B[B)Z
.end method

.method public abstract verifyChainSigningKey([Ljava/security/cert/X509Certificate;)Z
.end method

.method public abstract verifyMemberKey(Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)Z
.end method
