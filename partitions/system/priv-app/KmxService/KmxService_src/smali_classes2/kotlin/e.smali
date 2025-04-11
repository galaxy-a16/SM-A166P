.class public final Lkotlin/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final b:Lkotlin/e;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/e;

    invoke-direct {v0}, Lkotlin/e;-><init>()V

    sput-object v0, Lkotlin/e;->b:Lkotlin/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxb/f;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2}, Lxb/f;-><init>(II)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lxb/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lxb/f;

    invoke-direct {v0, v1, v2}, Lxb/f;-><init>(II)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lxb/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lxb/f;

    invoke-direct {v0, v1, v2}, Lxb/f;-><init>(II)V

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lxb/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    :cond_0
    if-eqz v1, :cond_1

    const v0, 0x10816

    iput v0, p0, Lkotlin/e;->a:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Version components are out of range: 1.8.22"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lkotlin/e;

    const-string v0, "other"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lkotlin/e;->a:I

    iget p1, p1, Lkotlin/e;->a:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/e;

    if-eqz v1, :cond_1

    check-cast p1, Lkotlin/e;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget p0, p0, Lkotlin/e;->a:I

    iget p1, p1, Lkotlin/e;->a:I

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lkotlin/e;->a:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "1.8.22"

    return-object p0
.end method
