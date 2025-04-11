.class public final Lf6/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lf6/h;


# instance fields
.field public final a:Lv7/t;

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf6/h;

    sget-object v1, Lv7/m;->a:Lv7/m;

    invoke-direct {v0, v1}, Lf6/h;-><init>(Lv7/t;)V

    sput-object v0, Lf6/h;->c:Lf6/h;

    return-void
.end method

.method public constructor <init>(Lv7/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lf6/h;->b:I

    iput-object p1, p0, Lf6/h;->a:Lv7/t;

    return-void
.end method

.method public static a(Lv7/r;)Lf6/h;
    .locals 2

    sget-object v0, Lf6/h;->c:Lf6/h;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv7/r;->b()Lv7/t;

    move-result-object p0

    invoke-interface {p0}, Lv7/t;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lf6/h;

    invoke-direct {v0, p0}, Lf6/h;-><init>(Lv7/t;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final b(Lio/netty/buffer/ByteBuf;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lf6/h;->a:Lv7/t;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf6/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    iget-object v2, v1, Lf6/i;->a:Lf6/j;

    invoke-virtual {v2, p1}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    iget-object v1, v1, Lf6/i;->b:Lf6/j;

    invoke-virtual {v1, p1}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Lf6/h;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lf6/h;->a:Lv7/t;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {v2, v0}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf6/i;

    iget-object v3, v2, Lf6/i;->a:Lf6/j;

    invoke-virtual {v3}, Lf6/j;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v2, v2, Lf6/i;->b:Lf6/j;

    invoke-virtual {v2}, Lf6/j;->e()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lf6/h;->b:I

    :cond_1
    iget p0, p0, Lf6/h;->b:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lf6/h;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lf6/h;

    iget-object p0, p0, Lf6/h;->a:Lv7/t;

    iget-object p1, p1, Lf6/h;->a:Lv7/t;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lf6/h;->a:Lv7/t;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf6/h;->a:Lv7/t;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
