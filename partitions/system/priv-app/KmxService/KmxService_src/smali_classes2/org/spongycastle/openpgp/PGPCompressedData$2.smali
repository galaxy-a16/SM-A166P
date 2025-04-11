.class Lorg/spongycastle/openpgp/PGPCompressedData$2;
.super Ljava/util/zip/InflaterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private eof:Z

.field final synthetic this$0:Lorg/spongycastle/openpgp/PGPCompressedData;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPCompressedData;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPCompressedData$2;->this$0:Lorg/spongycastle/openpgp/PGPCompressedData;

    invoke-direct {p0, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/spongycastle/openpgp/PGPCompressedData$2;->eof:Z

    return-void
.end method


# virtual methods
.method public fill()V
    .locals 4

    iget-boolean v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData$2;->eof:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    aput-byte v3, v0, v3

    const/4 v0, 0x1

    iput v0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    iput-boolean v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData$2;->eof:Z

    :cond_0
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget p0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    invoke-virtual {v0, v1, v3, p0}, Ljava/util/zip/Inflater;->setInput([BII)V

    return-void

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Unexpected end of ZIP input stream"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
