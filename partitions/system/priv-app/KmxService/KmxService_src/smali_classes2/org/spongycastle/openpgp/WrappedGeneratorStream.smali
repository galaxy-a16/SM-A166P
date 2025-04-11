.class Lorg/spongycastle/openpgp/WrappedGeneratorStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final _out:Ljava/io/OutputStream;

.field private final _sGen:Lorg/spongycastle/openpgp/StreamGenerator;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/spongycastle/openpgp/StreamGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_out:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_sGen:Lorg/spongycastle/openpgp/StreamGenerator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_sGen:Lorg/spongycastle/openpgp/StreamGenerator;

    invoke-interface {p0}, Lorg/spongycastle/openpgp/StreamGenerator;->close()V

    return-void
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/spongycastle/openpgp/WrappedGeneratorStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
