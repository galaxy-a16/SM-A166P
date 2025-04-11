.class public final Lcom/google/android/gms/measurement/internal/v2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/x2;IZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/measurement/internal/v2;->a:I

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/v2;->b:Z

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/v2;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 2
    const-string v0, "connectionSpecs"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v2;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Lokhttp3/j;
    .locals 12

    iget v0, p0, Lcom/google/android/gms/measurement/internal/v2;->a:I

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/v2;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/j;

    invoke-virtual {v5, p1}, Lokhttp3/j;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/measurement/internal/v2;->a:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_1
    if-nez v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find acceptable protocols. isFallback="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/v2;->c:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", modes="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", supported protocols="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Li4/f;->M()V

    throw v3

    :cond_2
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.util.Arrays.toString(this)"

    invoke-static {p0, p1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/net/UnknownServiceException;

    invoke-direct {p1, p0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget v0, p0, Lcom/google/android/gms/measurement/internal/v2;->a:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    const/4 v3, 0x0

    if-ge v0, v2, :cond_5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/j;

    invoke-virtual {v6, p1}, Lokhttp3/j;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/v2;->b:Z

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/v2;->c:Z

    iget-object v0, v5, Lokhttp3/j;->c:[Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "sslSocket.enabledCipherSuites"

    invoke-static {v1, v2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lokhttp3/h;->b:Lr/i;

    invoke-static {v1, v0, v2}, Lac/c;->n([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v1, v5, Lokhttp3/j;->d:[Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    const-string v6, "sslSocket.enabledProtocols"

    invoke-static {v2, v6}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lqb/a;->a:Lqb/a;

    invoke-static {v2, v1, v6}, Lac/c;->n([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string v6, "supportedCipherSuites"

    invoke-static {v2, v6}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lokhttp3/h;->b:Lr/i;

    sget-object v7, Lac/c;->a:[B

    array-length v7, v2

    move v8, v3

    :goto_6
    const/4 v9, -0x1

    if-ge v8, v7, :cond_a

    aget-object v10, v2, v8

    const-string v11, "TLS_FALLBACK_SCSV"

    invoke-virtual {v6, v10, v11}, Lr/i;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-nez v10, :cond_8

    move v10, v4

    goto :goto_7

    :cond_8
    move v10, v3

    :goto_7
    if-eqz v10, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    move v8, v9

    :goto_8
    const-string v3, "cipherSuitesIntersection"

    if-eqz p0, :cond_b

    if-eq v8, v9, :cond_b

    invoke-static {v0, v3}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object p0, v2, v8

    const-string v2, "supportedCipherSuites[indexOfFallbackScsv]"

    invoke-static {p0, v2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    add-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    add-int/2addr v2, v9

    aput-object p0, v0, v2

    :cond_b
    new-instance p0, Lokhttp3/i;

    invoke-direct {p0, v5}, Lokhttp3/i;-><init>(Lokhttp3/j;)V

    invoke-static {v0, v3}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lokhttp3/i;->b([Ljava/lang/String;)V

    const-string v0, "tlsVersionsIntersection"

    invoke-static {v1, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lokhttp3/i;->e([Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/i;->a()Lokhttp3/j;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/j;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/j;->d:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lokhttp3/j;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lokhttp3/j;->c:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_d
    return-object v5
.end method

.method public final b(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v2;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/x2;

    iget v2, p0, Lcom/google/android/gms/measurement/internal/v2;->a:I

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/v2;->b:Z

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/v2;->c:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/x2;->x(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v2;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/x2;

    iget v2, p0, Lcom/google/android/gms/measurement/internal/v2;->a:I

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/v2;->b:Z

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/v2;->c:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p2

    move-object v6, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/x2;->x(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v2;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/x2;

    iget v2, p0, Lcom/google/android/gms/measurement/internal/v2;->a:I

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/v2;->b:Z

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/v2;->c:Z

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/x2;->x(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v2;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/x2;

    iget v2, p0, Lcom/google/android/gms/measurement/internal/v2;->a:I

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/v2;->b:Z

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/v2;->c:Z

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/x2;->x(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
