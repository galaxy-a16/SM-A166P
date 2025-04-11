.class public final Lokhttp3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lokhttp3/j;

.field public static final f:Lokhttp3/j;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    const/16 v0, 0x9

    new-array v1, v0, [Lokhttp3/h;

    sget-object v2, Lokhttp3/h;->q:Lokhttp3/h;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Lokhttp3/h;->r:Lokhttp3/h;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v6, Lokhttp3/h;->s:Lokhttp3/h;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Lokhttp3/h;->k:Lokhttp3/h;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    sget-object v10, Lokhttp3/h;->m:Lokhttp3/h;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    sget-object v12, Lokhttp3/h;->l:Lokhttp3/h;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    sget-object v14, Lokhttp3/h;->n:Lokhttp3/h;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    sget-object v16, Lokhttp3/h;->p:Lokhttp3/h;

    const/16 v17, 0x7

    aput-object v16, v1, v17

    sget-object v18, Lokhttp3/h;->o:Lokhttp3/h;

    const/16 v19, 0x8

    aput-object v18, v1, v19

    const/16 v0, 0x10

    new-array v15, v0, [Lokhttp3/h;

    aput-object v2, v15, v3

    aput-object v4, v15, v5

    aput-object v6, v15, v7

    aput-object v8, v15, v9

    aput-object v10, v15, v11

    aput-object v12, v15, v13

    const/4 v2, 0x6

    aput-object v14, v15, v2

    aput-object v16, v15, v17

    aput-object v18, v15, v19

    sget-object v2, Lokhttp3/h;->i:Lokhttp3/h;

    const/16 v4, 0x9

    aput-object v2, v15, v4

    const/16 v2, 0xa

    sget-object v4, Lokhttp3/h;->j:Lokhttp3/h;

    aput-object v4, v15, v2

    const/16 v2, 0xb

    sget-object v4, Lokhttp3/h;->g:Lokhttp3/h;

    aput-object v4, v15, v2

    const/16 v2, 0xc

    sget-object v4, Lokhttp3/h;->h:Lokhttp3/h;

    aput-object v4, v15, v2

    const/16 v2, 0xd

    sget-object v4, Lokhttp3/h;->e:Lokhttp3/h;

    aput-object v4, v15, v2

    const/16 v2, 0xe

    sget-object v4, Lokhttp3/h;->f:Lokhttp3/h;

    aput-object v4, v15, v2

    const/16 v2, 0xf

    sget-object v4, Lokhttp3/h;->d:Lokhttp3/h;

    aput-object v4, v15, v2

    new-instance v2, Lokhttp3/i;

    invoke-direct {v2}, Lokhttp3/i;-><init>()V

    const/16 v4, 0x9

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/h;

    invoke-virtual {v2, v1}, Lokhttp3/i;->c([Lokhttp3/h;)V

    new-array v1, v7, [Lokhttp3/TlsVersion;

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    aput-object v4, v1, v3

    sget-object v6, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v6, v1, v5

    invoke-virtual {v2, v1}, Lokhttp3/i;->f([Lokhttp3/TlsVersion;)V

    invoke-virtual {v2}, Lokhttp3/i;->d()V

    invoke-virtual {v2}, Lokhttp3/i;->a()Lokhttp3/j;

    new-instance v1, Lokhttp3/i;

    invoke-direct {v1}, Lokhttp3/i;-><init>()V

    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lokhttp3/h;

    invoke-virtual {v1, v2}, Lokhttp3/i;->c([Lokhttp3/h;)V

    new-array v2, v7, [Lokhttp3/TlsVersion;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    invoke-virtual {v1, v2}, Lokhttp3/i;->f([Lokhttp3/TlsVersion;)V

    invoke-virtual {v1}, Lokhttp3/i;->d()V

    invoke-virtual {v1}, Lokhttp3/i;->a()Lokhttp3/j;

    move-result-object v1

    sput-object v1, Lokhttp3/j;->e:Lokhttp3/j;

    new-instance v1, Lokhttp3/i;

    invoke-direct {v1}, Lokhttp3/i;-><init>()V

    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/h;

    invoke-virtual {v1, v0}, Lokhttp3/i;->c([Lokhttp3/h;)V

    new-array v0, v11, [Lokhttp3/TlsVersion;

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    aput-object v2, v0, v7

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    aput-object v2, v0, v9

    invoke-virtual {v1, v0}, Lokhttp3/i;->f([Lokhttp3/TlsVersion;)V

    invoke-virtual {v1}, Lokhttp3/i;->d()V

    invoke-virtual {v1}, Lokhttp3/i;->a()Lokhttp3/j;

    new-instance v0, Lokhttp3/j;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v3, v1, v1}, Lokhttp3/j;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lokhttp3/j;->f:Lokhttp3/j;

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/j;->a:Z

    iput-boolean p2, p0, Lokhttp3/j;->b:Z

    iput-object p3, p0, Lokhttp3/j;->c:[Ljava/lang/String;

    iput-object p4, p0, Lokhttp3/j;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lokhttp3/j;->c:[Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    sget-object v4, Lokhttp3/h;->t:Lh5/d;

    invoke-virtual {v4, v3}, Lh5/d;->i(Ljava/lang/String;)Lokhttp3/h;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/r;->Y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    iget-boolean v0, p0, Lokhttp3/j;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lokhttp3/j;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lqb/a;->a:Lqb/a;

    invoke-static {v0, v2, v3}, Lac/c;->h([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lokhttp3/j;->c:[Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lokhttp3/h;->b:Lr/i;

    invoke-static {p0, p1, v0}, Lac/c;->h([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final c()Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lokhttp3/j;->d:[Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    sget-object v4, Lokhttp3/TlsVersion;->Companion:Lokhttp3/q0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lokhttp3/q0;->a(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/r;->Y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lokhttp3/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lokhttp3/j;

    iget-boolean v2, p1, Lokhttp3/j;->a:Z

    iget-boolean v3, p0, Lokhttp3/j;->a:Z

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    if-eqz v3, :cond_5

    iget-object v2, p0, Lokhttp3/j;->c:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/j;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lokhttp3/j;->d:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/j;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-boolean p0, p0, Lokhttp3/j;->b:Z

    iget-boolean p1, p1, Lokhttp3/j;->b:Z

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lokhttp3/j;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/j;->c:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lokhttp3/j;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :cond_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean p0, p0, Lokhttp3/j;->b:Z

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr v2, p0

    goto :goto_1

    :cond_2
    const/16 v2, 0x11

    :goto_1
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lokhttp3/j;->a:Z

    if-nez v0, :cond_0

    const-string p0, "ConnectionSpec()"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectionSpec(cipherSuites="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/j;->a()Ljava/util/List;

    move-result-object v1

    const-string v2, "[all enabled]"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/j;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lokhttp3/j;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
