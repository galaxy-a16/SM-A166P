.class public final Lv7/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/q;


# static fields
.field public static final a:Lv7/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv7/j;

    invoke-direct {v0}, Lv7/j;-><init>()V

    sput-object v0, Lv7/j;->a:Lv7/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lv7/q;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lv7/q;

    invoke-interface {p1}, Lv7/q;->size()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public final get(I)I
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Empty int list"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "[]"

    return-object p0
.end method
