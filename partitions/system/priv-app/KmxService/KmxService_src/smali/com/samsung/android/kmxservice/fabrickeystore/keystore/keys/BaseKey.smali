.class public abstract Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_ALIAS_SEPARATOR:Ljava/lang/String; = "__"


# instance fields
.field protected mAad:[B

.field protected mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

.field protected mKeyAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mFabricCryptoHelper:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;

    invoke-static {p2, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->genKeyAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->generateAssociatedData([Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mAad:[B

    return-void
.end method

.method public static genKeyAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "__"

    invoke-static {p0, v0, p1}, Landroidx/activity/b;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract create()Z
.end method

.method public varargs generateAssociatedData([Ljava/lang/String;)[B
    .locals 4

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->mKeyAlias:Ljava/lang/String;

    return-object p0
.end method
