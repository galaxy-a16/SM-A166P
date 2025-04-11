.class public Lcom/samsung/accessory/manager/authentication/msg/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field public final INF_SIZE:I

.field public final RES_ATQS:I

.field public apdu:[B

.field public data:[B

.field public inf:[B


# direct methods
.method public constructor <init>(BBBBB)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setInf(BBBBB)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setApdu()V

    return-void
.end method

.method public constructor <init>(BBBBB[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    array-length v1, p6

    add-int/2addr v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setInf(BBBBB)V

    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/Message;->setApdu()V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->INF_SIZE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->RES_ATQS:I

    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v0, 0x0

    array-length v2, v1

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->parseMessage(I)V

    return-void
.end method


# virtual methods
.method public getApdu()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final parseMessage(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    add-int/lit8 v1, v1, -0x2

    new-array p1, v1, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x3

    new-array p1, v1, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public final setApdu()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    array-length p0, p0

    array-length v2, v0

    invoke-static {v0, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public final setInf(BBBBB)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v0, 0x0

    aput-byte p1, p0, v0

    const/4 p1, 0x1

    aput-byte p2, p0, p1

    const/4 p1, 0x2

    aput-byte p3, p0, p1

    const/4 p1, 0x3

    aput-byte p4, p0, p1

    const/4 p1, 0x4

    aput-byte p5, p0, p1

    return-void
.end method
