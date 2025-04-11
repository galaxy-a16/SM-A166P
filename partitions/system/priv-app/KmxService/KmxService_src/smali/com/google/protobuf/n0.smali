.class public abstract Lcom/google/protobuf/n0;
.super Lcom/google/protobuf/v;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/protobuf/n0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    sget-boolean v0, Lcom/google/protobuf/wb;->e:Z

    sput-boolean v0, Lcom/google/protobuf/n0;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/v;-><init>()V

    return-void
.end method

.method public static c(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static d(ILcom/google/protobuf/ByteString;)I
    .locals 1

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/protobuf/n0;->t(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static e(Lcom/google/protobuf/ByteString;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/n0;->t(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static f(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static g(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/n0;->m(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static h(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static i(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static j(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static k(ILcom/google/protobuf/r8;Lcom/google/protobuf/z9;)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    check-cast p1, Lcom/google/protobuf/f;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/f;->getSerializedSize(Lcom/google/protobuf/z9;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static l(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/n0;->m(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static m(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/protobuf/n0;->t(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static n(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/n0;->v(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static o(ILcom/google/protobuf/r8;)I
    .locals 1

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    invoke-interface {p1}, Lcom/google/protobuf/r8;->getSerializedSize()I

    move-result p1

    invoke-static {p1}, Lcom/google/protobuf/n0;->t(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static p(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/n0;->q(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static q(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/yb;->b(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/n0;->t(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static r(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 p0, p0, 0x0

    invoke-static {p0}, Lcom/google/protobuf/n0;->t(I)I

    move-result p0

    return p0
.end method

.method public static s(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/n0;->t(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static t(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static u(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/n0;->r(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/n0;->v(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static v(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method


# virtual methods
.method public abstract A(ILcom/google/protobuf/ByteString;)V
.end method

.method public abstract B(Lcom/google/protobuf/ByteString;)V
.end method

.method public abstract C(II)V
.end method

.method public abstract D(I)V
.end method

.method public abstract E(IJ)V
.end method

.method public abstract F(J)V
.end method

.method public abstract G(II)V
.end method

.method public abstract H(I)V
.end method

.method public abstract I(ILcom/google/protobuf/r8;)V
.end method

.method public abstract J(Lcom/google/protobuf/r8;)V
.end method

.method public abstract K(ILcom/google/protobuf/r8;)V
.end method

.method public abstract L(ILcom/google/protobuf/ByteString;)V
.end method

.method public abstract M(ILjava/lang/String;)V
.end method

.method public abstract N(Ljava/lang/String;)V
.end method

.method public abstract O(II)V
.end method

.method public abstract P(II)V
.end method

.method public abstract Q(I)V
.end method

.method public abstract R(IJ)V
.end method

.method public abstract S(J)V
.end method

.method public final w(Ljava/lang/String;Lcom/google/protobuf/Utf8$UnpairedSurrogateException;)V
    .locals 3

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    sget-object v2, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/n0;->Q(I)V

    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/protobuf/v;->a(II[B)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p1, p0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract x(B)V
.end method

.method public abstract y(IZ)V
.end method

.method public abstract z(I[B)V
.end method
