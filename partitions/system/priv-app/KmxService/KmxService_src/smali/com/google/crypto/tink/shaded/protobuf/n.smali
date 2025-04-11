.class public final Lcom/google/crypto/tink/shaded/protobuf/n;
.super Lcom/google/crypto/tink/shaded/protobuf/c;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/d0;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/c;-><init>()V

    const/4 v0, 0x0

    or-int v1, v0, p2

    array-length v2, p1

    add-int v3, v0, p2

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/n;->a:[B

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/n;->c:I

    iput v3, p0, Lcom/google/crypto/tink/shaded/protobuf/n;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
