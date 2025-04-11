.class public final Lf6/d;
.super Lf6/j;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lf6/j;-><init>([B)V

    return-void
.end method

.method public static h([B)Lf6/d;
    .locals 6

    array-length v0, p0

    if-eqz v0, :cond_7

    array-length v0, p0

    const/4 v1, 0x1

    const v2, 0xffff

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_7

    invoke-static {p0}, Lf6/j;->f([B)Z

    move-result v0

    if-nez v0, :cond_5

    array-length v0, p0

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_3

    aget-byte v4, p0, v2

    const/16 v5, 0x23

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v3

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Lf6/d;

    invoke-direct {v0, p0}, Lf6/d;-><init>([B)V

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v0, 0x0

    :goto_6
    return-object v0
.end method
