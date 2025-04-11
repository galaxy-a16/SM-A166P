.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FabricKeyFactory"


# instance fields
.field private final mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-static {p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->genKeyAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->existKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public deleteKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-static {p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->genKeyAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->removeKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public deleteKeys(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
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

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->removeKeys(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$1;->$SwitchMap$com$samsung$android$kmxservice$fabrickeystore$keystore$keys$FabricKeyFactory$KeyType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/KemKey;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-direct {p1, p0, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/KemKey;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-direct {p1, p0, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-direct {p1, p0, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-direct {p1, p0, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-direct {p1, p0, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-direct {p1, p0, p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRecoveryCode()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    const-wide/16 v0, 0x1c

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/Random;->ints(JII)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/a;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/a;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/b;

    invoke-direct {v0, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/b;-><init>(I)V

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/auth/f;-><init>(I)V

    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/auth/f;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/auth/f;-><init>(I)V

    invoke-interface {p0, v0, v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
