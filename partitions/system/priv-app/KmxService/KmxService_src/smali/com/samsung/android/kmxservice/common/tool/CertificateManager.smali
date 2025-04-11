.class public Lcom/samsung/android/kmxservice/common/tool/CertificateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/kmxservice/common/tool/CertificateManager;


# instance fields
.field private final mCertificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CertificateManager"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/e2ee/data/LogTag;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->mCertificationMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/common/tool/CertificateManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->sInstance:Lcom/samsung/android/kmxservice/common/tool/CertificateManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->sInstance:Lcom/samsung/android/kmxservice/common/tool/CertificateManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->sInstance:Lcom/samsung/android/kmxservice/common/tool/CertificateManager;

    return-object p0
.end method


# virtual methods
.method public getCertification(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->mCertificationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->mCertificationMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->mCertificationMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    return-object p0
.end method
