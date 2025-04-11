.class public abstract Lcom/fasterxml/jackson/core/io/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/g;->a:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/g;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_5

    const/16 v3, 0x30

    if-ge v2, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    :try_start_0
    invoke-static {p1, v4}, Lcom/fasterxml/jackson/core/io/g;->d(Ljava/lang/String;Z)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int p0, p0

    :catch_0
    return p0

    :cond_6
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return p0
.end method

.method public static b(JLjava/lang/String;)J
    .locals 5

    if-nez p2, :cond_0

    return-wide p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-wide p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_5

    const/16 v3, 0x30

    if-ge v2, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    :try_start_0
    invoke-static {p2, v4}, Lcom/fasterxml/jackson/core/io/g;->d(Ljava/lang/String;Z)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-long p0, p0

    :catch_0
    return-wide p0

    :cond_6
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-wide p0
.end method

.method public static c(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4e2

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->o(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Z)D
    .locals 2

    if-eqz p1, :cond_1

    sget-object p1, La2/e;->a:La2/d;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sget-object v0, La2/e;->a:La2/d;

    invoke-virtual {v0, p0, p1}, La2/b;->d(Ljava/lang/CharSequence;I)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "Illegal input"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static e(Ljava/lang/String;Z)F
    .locals 2

    if-eqz p1, :cond_1

    sget-object p1, La2/f;->a:La2/d;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sget-object v0, La2/f;->a:La2/d;

    invoke-virtual {v0, p0, p1}, La2/b;->d(Ljava/lang/CharSequence;I)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "Illegal input"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static f(I[CI)I
    .locals 2

    if-lez p2, :cond_0

    aget-char v0, p1, p0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p2, p2, -0x1

    :cond_0
    add-int v0, p0, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p1, v0

    add-int/lit8 v0, v0, -0x30

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 p2, p0, 0x1

    aget-char p0, p1, p0

    add-int/lit8 p0, p0, -0x30

    const v1, 0x5f5e100

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    move p0, p2

    :pswitch_1
    add-int/lit8 p2, p0, 0x1

    aget-char p0, p1, p0

    add-int/lit8 p0, p0, -0x30

    const v1, 0x989680

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    move p0, p2

    :pswitch_2
    add-int/lit8 p2, p0, 0x1

    aget-char p0, p1, p0

    add-int/lit8 p0, p0, -0x30

    const v1, 0xf4240

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    move p0, p2

    :pswitch_3
    add-int/lit8 p2, p0, 0x1

    aget-char p0, p1, p0

    add-int/lit8 p0, p0, -0x30

    const v1, 0x186a0

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    move p0, p2

    :pswitch_4
    add-int/lit8 p2, p0, 0x1

    aget-char p0, p1, p0

    add-int/lit8 p0, p0, -0x30

    mul-int/lit16 p0, p0, 0x2710

    add-int/2addr v0, p0

    move p0, p2

    :pswitch_5
    add-int/lit8 p2, p0, 0x1

    aget-char p0, p1, p0

    add-int/lit8 p0, p0, -0x30

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr v0, p0

    move p0, p2

    :pswitch_6
    add-int/lit8 p2, p0, 0x1

    aget-char p0, p1, p0

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0x64

    add-int/2addr v0, p0

    move p0, p2

    :pswitch_7
    aget-char p0, p1, p0

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v0, p0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    move v0, v4

    :cond_0
    const/16 v3, 0xa

    if-eqz v0, :cond_3

    if-eq v2, v4, :cond_2

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    const/16 v5, 0x9

    if-le v2, v5, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    :goto_1
    const/16 v5, 0x39

    if-gt v1, v5, :cond_f

    const/16 v6, 0x30

    if-ge v1, v6, :cond_5

    goto :goto_7

    :cond_5
    sub-int/2addr v1, v6

    if-ge v4, v2, :cond_d

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_c

    if-ge v4, v6, :cond_6

    goto :goto_5

    :cond_6
    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v4, v6

    add-int/2addr v1, v4

    if-ge v7, v2, :cond_d

    add-int/lit8 v4, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v7, v5, :cond_b

    if-ge v7, v6, :cond_7

    goto :goto_4

    :cond_7
    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v7, v6

    add-int/2addr v1, v7

    if-ge v4, v2, :cond_d

    :goto_2
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_a

    if-ge v4, v6, :cond_8

    goto :goto_3

    :cond_8
    mul-int/2addr v1, v3

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v1, v4

    if-lt v7, v2, :cond_9

    goto :goto_6

    :cond_9
    move v4, v7

    goto :goto_2

    :cond_a
    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    :goto_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_c
    :goto_5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    :goto_6
    if-eqz v0, :cond_e

    neg-int v1, v1

    :cond_e
    return v1

    :cond_f
    :goto_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static h(I[CI)J
    .locals 5

    const/16 v0, 0x9

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/g;->f(I[CI)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr v1, v3

    add-int/2addr p0, p2

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/g;->f(I[CI)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v1, p0

    return-wide v1
.end method

.method public static i(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/g;->g(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
