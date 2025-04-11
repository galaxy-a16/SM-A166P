.class Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->this$0:Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkTrusted(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
    .locals 5

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-direct {p0, p2}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->fingerprint(Ljava/security/cert/X509Certificate;)[B

    move-result-object v1

    iget-object p0, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->this$0:Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;

    invoke-static {p0}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->access$000(Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;)[[B

    move-result-object p0

    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, " certificate with unknown fingerprint: "

    invoke-static {p1, v0}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private fingerprint(Ljava/security/cert/X509Certificate;)[B
    .locals 0

    invoke-static {}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->access$100()Lio/netty/util/concurrent/FastThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    const-string p2, "client"

    invoke-direct {p0, p2, p1}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->checkTrusted(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    const-string p2, "server"

    invoke-direct {p0, p2, p1}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->checkTrusted(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 0

    sget-object p0, Lio/netty/util/internal/EmptyArrays;->EMPTY_X509_CERTIFICATES:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method
