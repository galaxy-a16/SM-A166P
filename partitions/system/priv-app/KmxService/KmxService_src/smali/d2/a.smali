.class public final Ld2/a;
.super Ld2/d;
.source "SourceFile"


# instance fields
.field public final J0:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILe2/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ld2/d;-><init>(Lcom/fasterxml/jackson/core/io/d;ILe2/b;)V

    sget-object p1, Lx1/c;->d:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Ld2/a;->J0:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final o3(I)B
    .locals 0

    iget-object p0, p0, Ld2/a;->J0:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    return p0
.end method

.method public final p3()B
    .locals 2

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lx1/b;->p:I

    iget-object p0, p0, Ld2/a;->J0:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    return p0
.end method

.method public final q3()I
    .locals 2

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lx1/b;->p:I

    iget-object p0, p0, Ld2/a;->J0:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
