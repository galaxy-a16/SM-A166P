.class public Lorg/spongycastle/bcpg/UserAttributeSubpacket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected data:[B

.field private forceLongLength:Z

.field type:I


# direct methods
.method public constructor <init>(IZ[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    iput-boolean p2, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->forceLongLength:Z

    iput-object p3, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/bcpg/UserAttributeSubpacket;-><init>(IZ[B)V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xc0

    if-ge v0, v1, :cond_0

    iget-boolean v2, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->forceLongLength:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x20bf

    const/16 v3, 0xff

    if-gt v0, v2, :cond_1

    iget-boolean v2, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->forceLongLength:Z

    if-nez v2, :cond_1

    add-int/lit16 v0, v0, -0xc0

    shr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v3

    add-int/2addr v2, v1

    int-to-byte v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    iget v1, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    iget v3, p1, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    iget-object p1, p1, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    iget-object p0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
