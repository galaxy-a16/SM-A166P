.class public final Lw6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv6/c;


# direct methods
.method public constructor <init>(Lv6/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw6/a;->a:Lv6/c;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lw6/a;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lw6/a;

    iget-object p0, p0, Lw6/a;->a:Lv6/c;

    iget-object p1, p1, Lw6/a;->a:Lv6/c;

    invoke-virtual {p0, p1}, Lv6/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lw6/a;->a:Lv6/c;

    invoke-virtual {p0}, Lv6/c;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw6/a;->a:Lv6/c;

    invoke-virtual {p0}, Lv6/c;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
