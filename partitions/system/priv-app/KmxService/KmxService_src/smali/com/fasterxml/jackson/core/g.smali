.class public abstract Lcom/fasterxml/jackson/core/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final b:Lcom/fasterxml/jackson/core/util/g;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/core/StreamReadCapability;->values()[Lcom/fasterxml/jackson/core/StreamReadCapability;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/g;->a([Lcom/fasterxml/jackson/core/util/f;)Lcom/fasterxml/jackson/core/util/g;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/g;->b:Lcom/fasterxml/jackson/core/util/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/core/g;->a:I

    return-void
.end method


# virtual methods
.method public abstract A0()F
.end method

.method public abstract B0()I
.end method

.method public abstract C0()J
.end method

.method public abstract D0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.end method

.method public abstract E0()Ljava/lang/Number;
.end method

.method public F0()Ljava/lang/Number;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->E0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public G0()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract H()Ljava/math/BigInteger;
.end method

.method public abstract H0()Lcom/fasterxml/jackson/core/i;
.end method

.method public abstract I0()Lcom/fasterxml/jackson/core/util/g;
.end method

.method public abstract J(Lcom/fasterxml/jackson/core/Base64Variant;)[B
.end method

.method public J0()S
    .locals 4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->B0()I

    move-result v0

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_0

    int-to-short p0, v0

    return p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/exc/InputCoercionException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Numeric value (%s) out of range of Java short"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/fasterxml/jackson/core/exc/InputCoercionException;-><init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Class;)V

    throw v0
.end method

.method public abstract K0()Ljava/lang/String;
.end method

.method public abstract L0()[C
.end method

.method public M()Z
    .locals 4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->x()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "Current token (%s) not of boolean type"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/core/JsonParseException;->withRequestPayload(Lcom/fasterxml/jackson/core/util/RequestPayload;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public abstract M0()I
.end method

.method public N()B
    .locals 4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->B0()I

    move-result v0

    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    int-to-byte p0, v0

    return p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/exc/InputCoercionException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Numeric value (%s) out of range of Java byte"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/fasterxml/jackson/core/exc/InputCoercionException;-><init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Class;)V

    throw v0
.end method

.method public abstract N0()I
.end method

.method public abstract O()Lcom/fasterxml/jackson/core/j;
.end method

.method public abstract O0()Lcom/fasterxml/jackson/core/JsonLocation;
.end method

.method public P0()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract Q0()I
.end method

.method public abstract R0()J
.end method

.method public abstract S0()Ljava/lang/String;
.end method

.method public abstract T0()Z
.end method

.method public abstract U0()Z
.end method

.method public abstract V0(Lcom/fasterxml/jackson/core/JsonToken;)Z
.end method

.method public abstract W0()Z
.end method

.method public final X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->enabledIn(I)Z

    move-result p0

    return p0
.end method

.method public final Y0(Lcom/fasterxml/jackson/core/StreamReadFeature;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    iget p0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->enabledIn(I)Z

    move-result p0

    return p0
.end method

.method public abstract Z0()Z
.end method

.method public final a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/JsonParseException;->withRequestPayload(Lcom/fasterxml/jackson/core/util/RequestPayload;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    return-object p0
.end method

.method public abstract a1()Z
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract b0()Lcom/fasterxml/jackson/core/JsonLocation;
.end method

.method public abstract b1()Z
.end method

.method public abstract c1()Z
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d1()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->h0()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public e1()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->K0()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public abstract f1()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public g1(II)V
    .locals 0

    return-void
.end method

.method public abstract h0()Ljava/lang/String;
.end method

.method public h1(II)V
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->l1(I)Lcom/fasterxml/jackson/core/g;

    return-void
.end method

.method public abstract i()V
.end method

.method public abstract i1(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;)I
.end method

.method public j1()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k1(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->H0()Lcom/fasterxml/jackson/core/i;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/i;->h(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public l1(I)Lcom/fasterxml/jackson/core/g;
    .locals 0

    iput p1, p0, Lcom/fasterxml/jackson/core/g;->a:I

    return-object p0
.end method

.method public m1()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parser of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not support schema of type \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract n1()Lcom/fasterxml/jackson/core/g;
.end method

.method public t()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/g;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract w0()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public abstract x()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public abstract x0()Ljava/math/BigDecimal;
.end method

.method public abstract y()I
.end method

.method public abstract y0()D
.end method

.method public z(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/g;->a:I

    return-void
.end method

.method public z0()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
