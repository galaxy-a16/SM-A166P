.class public Lorg/spongycastle/openpgp/PGPLiteralData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BINARY:C = 'b'

.field public static final CONSOLE:Ljava/lang/String; = "_CONSOLE"

.field public static final NOW:Ljava/util/Date;

.field public static final TEXT:C = 't'

.field public static final UTF8:C = 'u'


# instance fields
.field data:Lorg/spongycastle/bcpg/LiteralDataPacket;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lorg/spongycastle/openpgp/PGPLiteralData;->NOW:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/LiteralDataPacket;

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPLiteralData;->data:Lorg/spongycastle/bcpg/LiteralDataPacket;

    return-void
.end method


# virtual methods
.method public getDataStream()Ljava/io/InputStream;
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPLiteralData;->data:Lorg/spongycastle/bcpg/LiteralDataPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/LiteralDataPacket;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPLiteralData;->data:Lorg/spongycastle/bcpg/LiteralDataPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/LiteralDataPacket;->getFormat()I

    move-result p0

    return p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPLiteralData;->data:Lorg/spongycastle/bcpg/LiteralDataPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/InputStreamPacket;->getInputStream()Lorg/spongycastle/bcpg/BCPGInputStream;

    move-result-object p0

    return-object p0
.end method

.method public getModificationTime()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPLiteralData;->data:Lorg/spongycastle/bcpg/LiteralDataPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/LiteralDataPacket;->getModificationTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getRawFileName()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPLiteralData;->data:Lorg/spongycastle/bcpg/LiteralDataPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/LiteralDataPacket;->getRawFileName()[B

    move-result-object p0

    return-object p0
.end method
