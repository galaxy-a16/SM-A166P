.class public abstract Lec/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lokio/ByteString;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    sget-object v0, Lokio/ByteString;->Companion:Lkc/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lkc/h;->b(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lec/f;->a:Lokio/ByteString;

    const-string v1, "DATA"

    const-string v2, "HEADERS"

    const-string v3, "PRIORITY"

    const-string v4, "RST_STREAM"

    const-string v5, "SETTINGS"

    const-string v6, "PUSH_PROMISE"

    const-string v7, "PING"

    const-string v8, "GOAWAY"

    const-string v9, "WINDOW_UPDATE"

    const-string v10, "CONTINUATION"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lec/f;->b:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lec/f;->c:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ge v3, v0, :cond_0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Integer.toBinaryString(it)"

    invoke-static {v6, v7}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v5, v2

    const-string v6, "%8s"

    invoke-static {v6, v5}, Lac/c;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x30

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String\u2026replace(oldChar, newChar)"

    invoke-static {v4, v5}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lec/f;->d:[Ljava/lang/String;

    sget-object v0, Lec/f;->c:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "END_STREAM"

    aput-object v1, v0, v5

    new-array v1, v5, [I

    aput v5, v1, v2

    const/16 v3, 0x8

    const-string v5, "PADDED"

    aput-object v5, v0, v3

    const-string v5, "END_STREAM|PADDED"

    const/16 v6, 0x9

    aput-object v5, v0, v6

    const/4 v5, 0x4

    const-string v6, "END_HEADERS"

    aput-object v6, v0, v5

    const-string v5, "PRIORITY"

    aput-object v5, v0, v4

    const/16 v4, 0x24

    const-string v5, "END_HEADERS|PRIORITY"

    aput-object v5, v0, v4

    const/4 v0, 0x3

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_1

    aget v6, v4, v5

    aget v7, v1, v2

    sget-object v8, Lec/f;->c:[Ljava/lang/String;

    or-int v9, v7, v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v8, v6

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    or-int/2addr v9, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v8, v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v8, v6

    const-string v7, "|PADDED"

    invoke-static {v10, v6, v7}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lec/f;->c:[Ljava/lang/String;

    array-length v0, v0

    :goto_2
    if-ge v2, v0, :cond_3

    sget-object v1, Lec/f;->c:[Ljava/lang/String;

    aget-object v3, v1, v2

    if-nez v3, :cond_2

    sget-object v3, Lec/f;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method public static a(IIIIZ)Ljava/lang/String;
    .locals 10

    sget-object v0, Lec/f;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p2, v1, :cond_0

    aget-object v0, v0, p2

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0x%02x"

    invoke-static {v1, v0}, Lac/c;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-nez p3, :cond_1

    const-string p2, ""

    goto :goto_3

    :cond_1
    sget-object v7, Lec/f;->d:[Ljava/lang/String;

    if-eq p2, v6, :cond_8

    if-eq p2, v5, :cond_8

    if-eq p2, v1, :cond_6

    const/4 v8, 0x6

    if-eq p2, v8, :cond_6

    const/4 v8, 0x7

    if-eq p2, v8, :cond_8

    const/16 v8, 0x8

    if-eq p2, v8, :cond_8

    sget-object v8, Lec/f;->c:[Ljava/lang/String;

    array-length v9, v8

    if-ge p3, v9, :cond_3

    aget-object v7, v8, p3

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    aget-object v7, v7, p3

    :goto_1
    if-ne p2, v4, :cond_4

    and-int/lit8 v8, p3, 0x4

    if-eqz v8, :cond_4

    const-string p2, "HEADERS"

    const-string p3, "PUSH_PROMISE"

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    and-int/lit8 p2, p3, 0x20

    if-eqz p2, :cond_5

    const-string p2, "PRIORITY"

    const-string p3, "COMPRESSED"

    :goto_2
    invoke-static {v7, p2, p3}, Lkotlin/text/r;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v7

    goto :goto_3

    :cond_6
    if-ne p3, v3, :cond_7

    const-string p2, "ACK"

    goto :goto_3

    :cond_7
    aget-object p2, v7, p3

    goto :goto_3

    :cond_8
    aget-object p2, v7, p3

    :goto_3
    if-eqz p4, :cond_9

    const-string p3, "<<"

    goto :goto_4

    :cond_9
    const-string p3, ">>"

    :goto_4
    new-array p4, v4, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, v6

    aput-object v0, p4, v5

    aput-object p2, p4, v1

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p0, p4}, Lac/c;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
