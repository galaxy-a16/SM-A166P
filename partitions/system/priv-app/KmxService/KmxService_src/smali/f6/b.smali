.class public final Lf6/b;
.super Lf6/c;
.source "SourceFile"


# instance fields
.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf6/c;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    iput p1, p0, Lf6/b;->g:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p3}, Lf6/c;-><init>([BI)V

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lf6/b;->g:I

    return-void
.end method


# virtual methods
.method public final h()I
    .locals 4

    iget v0, p0, Lf6/b;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lf6/j;->g()[B

    move-result-object v0

    const/16 v1, 0x8

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-byte v2, v0, v1

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lf6/b;->g:I

    :cond_2
    iget p0, p0, Lf6/b;->g:I

    return p0
.end method
