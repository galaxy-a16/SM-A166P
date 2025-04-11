.class Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;
.super Ljava/security/KeyStoreSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore;-><init>([Ljava/security/cert/X509Certificate;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final creationDate:Ljava/util/Date;

.field final synthetic val$certificateChain:[Ljava/security/cert/X509Certificate;

.field final synthetic val$keyless:Z


# direct methods
.method public constructor <init>(Z[Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$keyless:Z

    iput-object p2, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$certificateChain:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->creationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "key"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "key"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$certificateChain:[Ljava/security/cert/X509Certificate;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 3

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$certificateChain:[Ljava/security/cert/X509Certificate;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "key"

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$certificateChain:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->creationDate:Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->val$keyless:Z

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    :goto_0
    invoke-static {p1, v1}, Lio/netty/internal/tcnative/SSL;->loadPrivateKeyFromEngine(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p2, Lio/netty/handler/ssl/OpenSslPrivateKey;

    invoke-direct {p2, p0, p1}, Lio/netty/handler/ssl/OpenSslPrivateKey;-><init>(J)V

    return-object p2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/UnrecoverableKeyException;

    const-string p2, "Unable to load key from engine"

    invoke-direct {p1, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :cond_2
    return-object v1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;->engineContainsAlias(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 0

    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0

    .line 2
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSize()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
