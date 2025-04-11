.class public final Lw5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public final a:Ljavax/net/ssl/KeyManagerFactory;

.field public final b:Ljavax/net/ssl/TrustManagerFactory;

.field public final c:Lv7/t;

.field public final d:Lv7/t;

.field public final e:I

.field public final f:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    const-string v1, "HTTPS"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    :goto_0
    sput-object v0, Lw5/k;->g:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lv7/t;Lv7/t;ILjavax/net/ssl/HostnameVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/k;->a:Ljavax/net/ssl/KeyManagerFactory;

    iput-object p2, p0, Lw5/k;->b:Ljavax/net/ssl/TrustManagerFactory;

    iput-object p3, p0, Lw5/k;->c:Lv7/t;

    iput-object p4, p0, Lw5/k;->d:Lv7/t;

    iput p5, p0, Lw5/k;->e:I

    iput-object p6, p0, Lw5/k;->f:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lw5/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lw5/k;

    iget-object v1, p1, Lw5/k;->a:Ljavax/net/ssl/KeyManagerFactory;

    iget-object v3, p0, Lw5/k;->a:Ljavax/net/ssl/KeyManagerFactory;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw5/k;->b:Ljavax/net/ssl/TrustManagerFactory;

    iget-object v3, p1, Lw5/k;->b:Ljavax/net/ssl/TrustManagerFactory;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw5/k;->c:Lv7/t;

    iget-object v3, p1, Lw5/k;->c:Lv7/t;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw5/k;->d:Lv7/t;

    iget-object v3, p1, Lw5/k;->d:Lv7/t;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lw5/k;->e:I

    iget v3, p1, Lw5/k;->e:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lw5/k;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object p1, p1, Lw5/k;->f:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lw5/k;->a:Ljavax/net/ssl/KeyManagerFactory;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lw5/k;->b:Ljavax/net/ssl/TrustManagerFactory;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lw5/k;->c:Lv7/t;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lw5/k;->d:Lv7/t;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lw5/k;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lw5/k;->f:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
