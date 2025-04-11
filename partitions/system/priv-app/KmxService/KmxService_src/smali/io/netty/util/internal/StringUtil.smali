.class public abstract Lio/netty/util/internal/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BYTE2HEX_NOPAD:[Ljava/lang/String;

.field private static final BYTE2HEX_PAD:[Ljava/lang/String;

.field private static final HEX2B:[B

.field public static final NEWLINE:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/netty/util/internal/StringUtil;->BYTE2HEX_NOPAD:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    array-length v3, v2

    const/16 v4, 0xf

    if-ge v1, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    if-le v1, v4, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    const-string v4, "0"

    invoke-static {v4, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v1

    sget-object v2, Lio/netty/util/internal/StringUtil;->BYTE2HEX_NOPAD:[Ljava/lang/String;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x10000

    new-array v1, v1, [B

    sput-object v1, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    const/16 v2, 0x30

    aput-byte v0, v1, v2

    const/16 v0, 0x31

    const/4 v2, 0x1

    aput-byte v2, v1, v0

    const/16 v0, 0x32

    const/4 v2, 0x2

    aput-byte v2, v1, v0

    const/16 v0, 0x33

    const/4 v2, 0x3

    aput-byte v2, v1, v0

    const/16 v0, 0x34

    const/4 v2, 0x4

    aput-byte v2, v1, v0

    const/16 v0, 0x35

    const/4 v2, 0x5

    aput-byte v2, v1, v0

    const/16 v0, 0x36

    const/4 v2, 0x6

    aput-byte v2, v1, v0

    const/16 v0, 0x37

    const/4 v2, 0x7

    aput-byte v2, v1, v0

    const/16 v0, 0x38

    const/16 v2, 0x8

    aput-byte v2, v1, v0

    const/16 v0, 0x39

    const/16 v2, 0x9

    aput-byte v2, v1, v0

    const/16 v0, 0x41

    const/16 v2, 0xa

    aput-byte v2, v1, v0

    const/16 v0, 0x42

    const/16 v3, 0xb

    aput-byte v3, v1, v0

    const/16 v0, 0x43

    const/16 v5, 0xc

    aput-byte v5, v1, v0

    const/16 v0, 0x44

    const/16 v6, 0xd

    aput-byte v6, v1, v0

    const/16 v0, 0x45

    const/16 v7, 0xe

    aput-byte v7, v1, v0

    const/16 v0, 0x46

    aput-byte v4, v1, v0

    const/16 v0, 0x61

    aput-byte v2, v1, v0

    const/16 v0, 0x62

    aput-byte v3, v1, v0

    const/16 v0, 0x63

    aput-byte v5, v1, v0

    const/16 v0, 0x64

    aput-byte v6, v1, v0

    const/16 v0, 0x65

    aput-byte v7, v1, v0

    const/16 v0, 0x66

    aput-byte v4, v1, v0

    return-void
.end method

.method public static byteToHexStringPadded(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    and-int/lit16 p0, p0, 0xff

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static decodeHexByte(Ljava/lang/CharSequence;I)B
    .locals 4

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    shl-int/lit8 p0, v0, 0x4

    add-int/2addr p0, v1

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x2

    invoke-interface {p0, p1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "invalid hex byte \'%s\' at index %d of \'%s\'"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;)[B
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->decodeHexDump(Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;II)[B
    .locals 4

    if-ltz p2, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    sget-object p0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    return-object p0

    :cond_0
    ushr-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    ushr-int/lit8 v2, v1, 0x1

    add-int v3, p1, v1

    invoke-static {p0, v3}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length: "

    .line 2
    invoke-static {p1, p2}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeHexNibble(C)I
    .locals 1

    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    aget-byte p0, v0, p0

    return p0
.end method

.method public static isSurrogate(C)Z
    .locals 1

    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static simpleClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-string v0, "clazz"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static simpleClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2
    if-nez p0, :cond_0

    const-string p0, "null_object"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
