.class public abstract Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/SymmetricKey;
.super Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract exportKey(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)[B"
        }
    .end annotation
.end method

.method public abstract importKey(Ljava/lang/Object;[B)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[B)Z"
        }
    .end annotation
.end method
