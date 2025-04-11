.class Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SafeDeflaterOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;Ljava/io/OutputStream;IZ)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;->this$0:Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;

    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1, p3, p4}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p2, p1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    iget-object p0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    return-void
.end method
