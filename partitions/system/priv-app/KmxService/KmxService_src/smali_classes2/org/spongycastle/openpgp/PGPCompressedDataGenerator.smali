.class public Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/bcpg/CompressionAlgorithmTags;
.implements Lorg/spongycastle/openpgp/StreamGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;,
        Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream;
    }
.end annotation


# instance fields
.field private algorithm:I

.field private compression:I

.field private dOut:Ljava/io/OutputStream;

.field private pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown compression algorithm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-ltz p2, :cond_2

    const/16 v0, 0x9

    if-gt p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown compression level: "

    .line 2
    invoke-static {p1, p2}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iput p1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->algorithm:I

    iput p2, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->compression:I

    return-void
.end method

.method private doOpen()V
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    iget v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->algorithm:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->algorithm:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    iget v2, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->compression:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;-><init>(Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;Ljava/io/OutputStream;IZ)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    iget v3, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->compression:I

    invoke-direct {v0, p0, v2, v3, v1}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;-><init>(Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;Ljava/io/OutputStream;IZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->finish()V

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->flush()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    :cond_1
    return-void
.end method

.method public open(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/spongycastle/bcpg/BCPGOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->doOpen()V

    new-instance p1, Lorg/spongycastle/openpgp/WrappedGeneratorStream;

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/WrappedGeneratorStream;-><init>(Ljava/io/OutputStream;Lorg/spongycastle/openpgp/StreamGenerator;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "generator already in open state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public open(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/spongycastle/bcpg/BCPGOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p2}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->doOpen()V

    new-instance p1, Lorg/spongycastle/openpgp/WrappedGeneratorStream;

    iget-object p2, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/WrappedGeneratorStream;-><init>(Ljava/io/OutputStream;Lorg/spongycastle/openpgp/StreamGenerator;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "generator already in open state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
