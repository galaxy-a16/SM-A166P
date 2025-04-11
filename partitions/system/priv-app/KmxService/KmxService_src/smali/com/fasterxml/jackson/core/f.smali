.class public abstract Lcom/fasterxml/jackson/core/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field public a:Lcom/fasterxml/jackson/core/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/core/StreamWriteCapability;->values()[Lcom/fasterxml/jackson/core/StreamWriteCapability;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/g;->a([Lcom/fasterxml/jackson/core/util/f;)Lcom/fasterxml/jackson/core/util/g;

    sget-object v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->CAN_WRITE_FORMATTED_NUMBERS:Lcom/fasterxml/jackson/core/StreamWriteCapability;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    sget-object v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->CAN_WRITE_BINARY_NATIVELY:Lcom/fasterxml/jackson/core/StreamWriteCapability;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/f;->getMask()I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(II)V
    .locals 4

    const/4 v0, 0x0

    add-int v1, v0, p1

    if-gt v1, p0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, p1

    const-string p0, "invalid argument(s) (offset=%d, length=%d) for input array of %d element"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract A0()V
.end method

.method public abstract B0(D)V
.end method

.method public abstract C0(F)V
.end method

.method public abstract D0(I)V
.end method

.method public abstract E0(J)V
.end method

.method public abstract F0(Ljava/lang/String;)V
.end method

.method public abstract G0(Ljava/math/BigDecimal;)V
.end method

.method public H(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)V
    .locals 0

    return-void
.end method

.method public abstract H0(Ljava/math/BigInteger;)V
.end method

.method public abstract I0(S)V
.end method

.method public J(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->x()Lc2/d;

    move-result-object p0

    if-eqz p0, :cond_0

    iput-object p1, p0, Lc2/d;->g:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public J0(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string v0, "No native support for writing Object Ids"

    invoke-direct {p1, v0, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/f;)V

    throw p1
.end method

.method public abstract K0(C)V
.end method

.method public abstract L0(Lcom/fasterxml/jackson/core/l;)V
.end method

.method public M(Lcom/fasterxml/jackson/core/l;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public abstract M0(Ljava/lang/String;)V
.end method

.method public abstract N(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
.end method

.method public abstract N0([CI)V
.end method

.method public abstract O(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
.end method

.method public O0(Lcom/fasterxml/jackson/core/l;)V
    .locals 0

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/l;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->P0(Ljava/lang/String;)V

    return-void
.end method

.method public abstract P0(Ljava/lang/String;)V
.end method

.method public abstract Q0()V
.end method

.method public abstract R0(Ljava/lang/Object;)V
.end method

.method public abstract S0(Ljava/lang/Object;)V
.end method

.method public abstract T0()V
.end method

.method public abstract U0(Ljava/lang/Object;)V
.end method

.method public abstract V0(Ljava/lang/Object;)V
.end method

.method public abstract W0(I[CI)V
.end method

.method public abstract X0(Lcom/fasterxml/jackson/core/l;)V
.end method

.method public abstract Y0(Ljava/lang/String;)V
.end method

.method public Z0(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string v0, "No native support for writing Type Ids"

    invoke-direct {p1, v0, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/f;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/f;)V

    throw v0
.end method

.method public final a1(Lf2/c;)V
    .locals 5

    iget-object v0, p1, Lf2/c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->i()Z

    move-result v1

    iget-object v2, p1, Lf2/c;->f:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p1, Lf2/c;->g:Z

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/f;->Z0(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lf2/c;->g:Z

    iget-object v3, p1, Lf2/c;->e:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_2

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->requiresObjectContext()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    iput-object v3, p1, Lf2/c;->e:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    :cond_2
    sget-object v4, Lcom/fasterxml/jackson/core/e;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v1, :cond_5

    const/4 v1, 0x2

    if-eq v3, v1, :cond_5

    const/4 v1, 0x3

    if-eq v3, v1, :cond_4

    const/4 v1, 0x4

    if-eq v3, v1, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->Q0()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/f;->Y0(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->T0()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/f;->z0(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lf2/c;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/f;->U0(Ljava/lang/Object;)V

    iget-object p1, p1, Lf2/c;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->z0(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/f;->Y0(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v0, :cond_6

    iget-object p1, p1, Lf2/c;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->U0(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, p1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->Q0()V

    :cond_7
    :goto_2
    return-void
.end method

.method public abstract b0(Z)V
.end method

.method public final b1(Lf2/c;)V
    .locals 2

    iget-object v0, p1, Lf2/c;->f:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->x0()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->w0()V

    :cond_1
    :goto_0
    iget-boolean v0, p1, Lf2/c;->g:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/fasterxml/jackson/core/e;->a:[I

    iget-object v1, p1, Lf2/c;->e:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->x0()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->w0()V

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lf2/c;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object p1, p1, Lf2/c;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/f;->z0(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/f;->Y0(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public abstract close()V
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract flush()V
.end method

.method public h0(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/f;->A0()V

    return-void

    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    check-cast p1, [B

    sget-object v0, Lcom/fasterxml/jackson/core/a;->b:Lcom/fasterxml/jackson/core/Base64Variant;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/fasterxml/jackson/core/f;->O(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    return-void

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string v1, "No native support for writing embedded objects of type "

    invoke-static {p1, v1}, Landroidx/activity/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/f;)V

    throw v0
.end method

.method public i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract t(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/f;
.end method

.method public abstract w0()V
.end method

.method public abstract writeObject(Ljava/lang/Object;)V
.end method

.method public abstract x()Lc2/d;
.end method

.method public abstract x0()V
.end method

.method public abstract y(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
.end method

.method public abstract y0(Lcom/fasterxml/jackson/core/l;)V
.end method

.method public abstract z(II)Lcom/fasterxml/jackson/core/f;
.end method

.method public abstract z0(Ljava/lang/String;)V
.end method
